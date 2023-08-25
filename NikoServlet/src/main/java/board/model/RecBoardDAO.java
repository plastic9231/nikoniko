package board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RecBoardDAO {

	private static RecBoardDAO instance = null;
	
	private RecBoardDAO() {
	}
	
	public static RecBoardDAO getInstance() {
		
		if(instance==null) {
			synchronized (RecBoardDAO.class) {
				instance = new RecBoardDAO();
			}
		}
		return instance;
	}
	
	// 전체 글의 개수
	public int getArticleCount(String find, String find_box) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = 0;
		
		
		try {
			conn = ConnUtil.getConnection();
			
			if(find.equals("br_writer")) {
				pstmt = conn.prepareStatement("select count(*) from board_rec where br_writer=?");
				pstmt.setString(1, find_box);
			}else if(find.equals("br_subject")) {
				pstmt = conn.prepareStatement("select count(*) from board_rec where br_subject like '%" + find_box + "%'");
			}else if(find.equals("br_content")) {
				pstmt = conn.prepareStatement("select count(*) from board_rec where br_content like '%" + find_box + "%'");
			}else {
				pstmt = conn.prepareStatement("select count(*) from board_rec");
			}
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				x = rs.getInt(1);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			if(rs!=null){
				try{
					rs.close();
				}catch(SQLException s){
				
				}
			}
			
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
		
		return x;
		
	} // end getArticleCount
	
	// 글의 목록
	public List<RecBoardVO> getArticles(String find, String find_box, int start, int end) { // 수정 1
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<RecBoardVO> articleList = null;
		
		try {
			conn = ConnUtil.getConnection();
			// 수정 2
			StringBuffer sql = new StringBuffer();
			sql.append("select * from ");
			sql.append("(select rownum rnum, br_num, br_writer, br_subject, br_password, br_regdate, br_readcount, br_ref, br_step, br_depth, br_content from ");
			
			// 검색 조건이 작성자일 경우
			if(find.equals("br_writer")) {
				sql.append("(select * from board_rec where br_writer=? order by br_ref desc, br_step asc)) where rnum>=? and rnum<=?");
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setString(1, find_box);
				pstmt.setInt(2, start);
				pstmt.setInt(3, end);
			// 제목일 경우	
			}else if(find.equals("br_subject")) {
				sql.append("(select * from board_rec where br_subject like '%" + find_box + "%' order by br_ref desc, br_step asc)) where rnum>=? and rnum<=?");
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setInt(1, start);
				pstmt.setInt(2, end);
			// 내용일 경우
			}else if(find.equals("br_content")) {
				sql.append("(select * from board_rec where br_content like '%" + find_box + "%' order by br_ref desc, br_step asc)) where rnum>=? and rnum<=?");
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setInt(1, start);
				pstmt.setInt(2, end);
			// 검색 조건이 없을 경우
			}else {
				sql.append("(select * from board_rec order by br_ref desc, br_step asc)) where rnum>=? and rnum<=?");
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setInt(1, start);
				pstmt.setInt(2, end);
			}
			
			/*
			String sql = "select * from (select rownum rnum, num, writer, email, subject, "
					+ "pass, regdate, readcount, ref, step, depth, content, ip from (select * from board order by ref desc, step asc)) "
					+ "where rnum>=? and rnum<=?";
			 
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			*/
			
			rs= pstmt.executeQuery();
			
			if(rs.next()) {
				articleList = new ArrayList<RecBoardVO>(end - start+1); // 수정 3
				do {
					RecBoardVO article = new RecBoardVO();
					article.setBr_num(rs.getInt("br_num"));
					article.setBr_writer(rs.getString("br_writer"));
					article.setBr_content(rs.getString("br_content"));
					article.setBr_subject(rs.getString("br_subject"));
					article.setBr_password(rs.getString("br_password"));
					article.setBr_readcount(rs.getInt("br_readcount"));
					article.setBr_ref(rs.getInt("br_ref"));
					article.setBr_step(rs.getInt("br_step"));
					article.setBr_depth(rs.getInt("br_depth"));
					article.setBr_regdate(rs.getTimestamp("br_regdate"));
					
					articleList.add(article);
					
					
				}while(rs.next());
			}

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			if(rs!=null){
				try{
					rs.close();
				}catch(SQLException s){
				
				}
			}
			
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
		
		return articleList;
		
	} // end getArticles
	
	// 글쓰기 폼에서 넘어온 데이터를 실제 데이터베이스에 넣어줄 메소드 추가
	public void InsertArticle(RecBoardVO article) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int num = article.getBr_num();
		int ref = article.getBr_ref();
		int step = article.getBr_step();
		int depth = article.getBr_depth();
		int number = 0;
		String sql = "";
		
		try {
			conn = ConnUtil.getConnection();
			sql = "select max(br_num) from board_rec";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				number = rs.getInt(1)+1;
			}
			else {
				number = 1;
			}
			if(num!=0) { // 답변글일 경우
				sql = "update br_board set br_step=br_step+1 where br_ref=? and br_step>?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, ref);
				pstmt.setInt(2, step);
				pstmt.executeUpdate();
				step = step + 1;
				depth = depth + 1;
			}
			else { // 새글일 경우
				ref = number;
				step = 0;
				depth = 0;
			}
			
			sql = "insert into board_rec(br_num, br_writer, br_content, br_subject, br_password, br_readcount, br_ref, br_step, br_depth, br_regdate)"
					+ " values(rec_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ? ,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, article.getBr_writer());
			pstmt.setString(2, article.getBr_content());
			pstmt.setString(3, article.getBr_subject());
			pstmt.setString(4, article.getBr_password());
			pstmt.setInt(5, article.getBr_readcount());
			pstmt.setInt(6, ref);
			pstmt.setInt(7, step);
			pstmt.setInt(8, depth);
			pstmt.setTimestamp(9, article.getBr_regdate());
			
			pstmt.executeUpdate();
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			if(rs!=null){
				try{
					rs.close();
				}catch(SQLException s){
				
				}
			}
			
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
		
	} // end InsertArticle
	
	public RecBoardVO getArticle(int num) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql= "";
		RecBoardVO article = null;
		
		try {
			conn = ConnUtil.getConnection();
			sql = "update board_rec set br_readcount=br_readcount+1 where br_num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			
			pstmt=conn.prepareStatement("select * from board_rec where br_num=?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				article = new RecBoardVO();
				article.setBr_num(rs.getInt("br_num"));
				article.setBr_writer(rs.getString("br_writer"));
				article.setBr_content(rs.getString("br_content"));
				article.setBr_subject(rs.getString("br_subject"));
				article.setBr_password(rs.getString("br_password"));
				article.setBr_readcount(rs.getInt("br_readcount"));
				article.setBr_ref(rs.getInt("br_ref"));
				article.setBr_step(rs.getInt("br_step"));
				article.setBr_depth(rs.getInt("br_depth"));
				article.setBr_regdate(rs.getTimestamp("br_regdate"));
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			if(rs!=null){
				try{
					rs.close();
				}catch(SQLException s){
				
				}
			}
			
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
		
		return article;
		
	} // end getArticle
	
}
