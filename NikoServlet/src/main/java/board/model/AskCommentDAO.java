package board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AskCommentDAO {
    
    private static AskCommentDAO instance = null;
    
    private AskCommentDAO() {
    }
    
    public static AskCommentDAO getInstance() {
        if(instance==null) {
            synchronized (AskCommentDAO.class) {
                instance = new AskCommentDAO();
            }
        }
        return instance;
    }
    
    // 댓글 목록 가져오기
    public List<AskCommentVO> getComments(int postNum) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<AskCommentVO> commentList = new ArrayList<>();
        
        try {
            conn = ConnUtil.getConnection();
            String sql = "SELECT * FROM comments_ask WHERE post_num = ? ORDER BY comment_id ASC";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, postNum);
            rs = pstmt.executeQuery();
            
            while(rs.next()) {
                AskCommentVO comment = new AskCommentVO();
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
    public void insertComment(AskCommentVO comment) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            conn = ConnUtil.getConnection();
            String sql = "INSERT INTO comments_ask(comment_id, post_num, nickname, content, password) VALUES(comments_ask_seq.NEXTVAL, ?, ?, ?, ?)";
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
    public int updateComment(AskCommentVO comment) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        int result = 0;
        
        try {
            conn = ConnUtil.getConnection();
            String sql = "UPDATE comments_ask SET content = ?, updated_at = CURRENT_TIMESTAMP WHERE comment_id = ? AND password = ?";
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
            String sql = "DELETE FROM comments_ask WHERE comment_id = ? AND password = ?";
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
