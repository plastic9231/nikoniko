package board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RecCommentDAO {
    
    private static RecCommentDAO instance = null;
    
    private RecCommentDAO() {
    }
    
    public static RecCommentDAO getInstance() {
        if(instance==null) {
            synchronized (RecCommentDAO.class) {
                instance = new RecCommentDAO();
            }
        }
        return instance;
    }
    
    // 댓글 목록 가져오기
    public List<RecCommentVO> getComments(int postNum) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<RecCommentVO> commentList = new ArrayList<>();
        
        try {
            conn = ConnUtil.getConnection();
            String sql = "SELECT * FROM comments_rec WHERE post_num = ? ORDER BY comment_id ASC";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, postNum);
            rs = pstmt.executeQuery();
            
            while(rs.next()) {
                RecCommentVO comment = new RecCommentVO();
                comment.setCommentId(rs.getInt("comment_id"));
                comment.setPostNum(rs.getInt("post_num"));
                comment.setNickname(rs.getString("nickname"));
                comment.setContent(rs.getString("content"));
                comment.setCreatedAt(rs.getTimestamp("created_at"));
                comment.setUpdatedAt(rs.getTimestamp("updated_at"));
                comment.setPassword(rs.getString("password"));
                
                commentList.add(comment);
            }
            
        } catch(SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
        }
        
        return commentList;
    }
    
    // 댓글 작성
    public void insertComment(RecCommentVO comment) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            conn = ConnUtil.getConnection();
            String sql = "INSERT INTO comments_rec(comment_id, post_num, nickname, content, password) VALUES(comments_rec_seq.NEXTVAL, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, comment.getPostNum());
            pstmt.setString(2, comment.getNickname());
            pstmt.setString(3, comment.getContent());
            pstmt.setString(4, comment.getPassword());
            
            pstmt.executeUpdate();
            
        } catch(SQLException e) {
            e.printStackTrace();
        } finally {
           
			if(pstmt!=null){
				try{
					pstmt.close();
				}catch(SQLException s){
				
				}
			}
			
			if(conn!=null){
				try{
					conn.close();
				}catch(SQLException s){
					
				}
			}
        }
    }
    
    // 댓글 수정
    public int updateComment(RecCommentVO comment) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        int result = 0;
        
        try {
            conn = ConnUtil.getConnection();
            String sql = "UPDATE comments_rec SET content = ?, updated_at = CURRENT_TIMESTAMP WHERE comment_id = ? AND password = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, comment.getContent());
            pstmt.setInt(2, comment.getCommentId());
            pstmt.setString(3, comment.getPassword());
            
            result = pstmt.executeUpdate();
            
        } catch(SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
        }
        
        return result;
    }
    
    // 댓글 삭제
    public int deleteComment(int commentId, String password) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        int result = 0;
        
        try {
            conn = ConnUtil.getConnection();
            String sql = "DELETE FROM comments_rec WHERE comment_id = ? AND password = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, commentId);
            pstmt.setString(2, password);
            
            result = pstmt.executeUpdate();
            
        } catch(SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
        }
        
        return result;
    }
}
