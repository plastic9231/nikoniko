package board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InfoBoardDAO {
	
	private static InfoBoardDAO instance = null;
	
	private InfoBoardDAO() {
	}
	
	public static InfoBoardDAO getInstance() {
		
		if(instance==null) {
			synchronized (InfoBoardDAO.class) {
				instance = new InfoBoardDAO();
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
			
			if(find.equals("writer")) {
				pstmt = conn.prepareStatement("select count(*) from board_info where writer=?");
				pstmt.setString(1, find_box);
			}else if(find.equals("subject")) {
				pstmt = conn.prepareStatement("select count(*) from board_info where subject like '%" + find_box + "%'");
			}else if(find.equals("content")) {
				pstmt = conn.prepareStatement("select count(*) from board_info where content like '%" + find_box + "%'");
			}else {
				pstmt = conn.prepareStatement("select count(*) from board_info");
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
	public List<InfoBoardVO> getArticles(String find, String find_box, int start, int end) { // 수정 1
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<InfoBoardVO> articleList = null;
		
		try {
			conn = ConnUtil.getConnection();
			// 수정 2
			StringBuffer sql = new StringBuffer();
			sql.append("select * from ");
			sql.append("(select rownum rnum, num, writer, subject, pass, readcount, ref, step, depth, regdate, content from ");
			
			// 검색 조건이 작성자일 경우
			if(find.equals("writer")) {
				sql.append("(select * from board_info where writer=? order by ref desc, step asc)) where rnum>=? and rnum<=?");
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setString(1, find_box);
				pstmt.setInt(2, start);
				pstmt.setInt(3, end);
			// 제목일 경우	
			}else if(find.equals("subject")) {
				sql.append("(select * from board_info where subject like '%" + find_box + "%' order by ref desc, step asc)) where rnum>=? and rnum<=?");
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setInt(1, start);
				pstmt.setInt(2, end);
			// 내용일 경우
			}else if(find.equals("content")) {
				sql.append("(select * from board_info where content like '%" + find_box + "%' order by ref desc, step asc)) where rnum>=? and rnum<=?");
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setInt(1, start);
				pstmt.setInt(2, end);
			// 검색 조건이 없을 경우
			}else {
				sql.append("(select * from board_info order by ref desc, step asc)) where rnum>=? and rnum<=?");
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
				articleList = new ArrayList<InfoBoardVO>(end - start+1); // 수정 3
				do {
					InfoBoardVO article = new InfoBoardVO();
					article.setNum(rs.getInt("num"));
					article.setWriter(rs.getString("writer"));
					article.setSubject(rs.getString("subject"));
					article.setPass(rs.getString("pass"));
					article.setReadcount(rs.getInt("readcount"));
					article.setRef(rs.getInt("ref"));
					article.setStep(rs.getInt("step"));
					article.setDepth(rs.getInt("depth"));
					article.setRegdate(rs.getTimestamp("regdate"));
					article.setContent(rs.getString("content"));
					
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
	public void InsertArticle(InfoBoardVO article) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int num = article.getNum();
		int ref = article.getRef();
		int step = article.getStep();
		int depth = article.getDepth();
		int number = 0;
		String sql = "";
		
		try {
			conn = ConnUtil.getConnection();
			sql = "select max(num) from board_info";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				number = rs.getInt(1)+1;
			}
			else {
				number = 1;
			}
			if(num!=0) { // 답변글일 경우
				sql = "update board_info set step=step+1 where ref=? and step>?";
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
			
			sql = "insert into board_info(num, writer, subject, pass, readcount, ref, step, depth, regdate, content)"
					+ " values(info_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ? ,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, article.getWriter());
			pstmt.setString(2, article.getSubject());
			pstmt.setString(3, article.getPass());
			pstmt.setInt(4, article.getReadcount());
			pstmt.setInt(5, ref);
			pstmt.setInt(6, step);
			pstmt.setInt(7, depth);
			pstmt.setTimestamp(8, article.getRegdate());
			pstmt.setString(9, article.getContent());
			
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
	
	public InfoBoardVO getArticle(int num) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql= "";
		InfoBoardVO article = null;
		
		try {
			conn = ConnUtil.getConnection();
			sql = "update board_info set readcount=readcount+1 where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			
			pstmt=conn.prepareStatement("select * from board_info where num=?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				article = new InfoBoardVO();
				article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
				article.setSubject(rs.getString("subject"));
				article.setPass(rs.getString("pass"));
				article.setReadcount(rs.getInt("readcount"));
				article.setRef(rs.getInt("ref"));
				article.setStep(rs.getInt("step"));
				article.setDepth(rs.getInt("depth"));
				article.setRegdate(rs.getTimestamp("regdate"));
				article.setContent(rs.getString("content"));
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
	
	
	public InfoBoardVO updateGetArticle(int num) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		InfoBoardVO article = null;
		
		
		try {
			
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select * from board_info where num=?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				article = new InfoBoardVO();
				article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
				article.setSubject(rs.getString("subject"));
				article.setPass(rs.getString("pass"));
				article.setReadcount(rs.getInt("readcount"));
				article.setRef(rs.getInt("ref"));
				article.setStep(rs.getInt("step"));
				article.setDepth(rs.getInt("depth"));
				article.setRegdate(rs.getTimestamp("regdate"));
				article.setContent(rs.getString("content"));
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
		
	} // end updateGetArticle

	/*
	 * 	수정 버튼을 클릭했을 경우 데이터베이스에 저장되어있던 글도 수정처리가 되어야한다. 
	 */
	
	public int updateArticle(InfoBoardVO article) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String dbPasswd = "";
		String sql = "";
		int result = -1;
		
		try {
			
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select pass from board_info where num=?");
			pstmt.setInt(1, article.getNum());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				dbPasswd = rs.getString("pass");
				if(dbPasswd.equals(article.getPass())) {
					// 비밀번호가 일치하면 수정처리하면 됨
					// 작성자, 이메일, 제목, 내용
					sql = "update board_info set writer=?, subject=?, content=? where num=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, article.getWriter());
					pstmt.setString(2, article.getSubject());
					pstmt.setString(3, article.getContent());
					pstmt.setInt(4, article.getNum());
					pstmt.executeUpdate();
					
					result = 1; // 수정 성공
				}
				else {
					result = 0; // 수정 실패
				}
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
		
		 return result;
		
	} // end updateArticle

	public int deleteArticle(int num, String pass) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbPasswd = "";
		int result = -1;
		
		try {

			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement("select pass from board_info where num=?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				dbPasswd = rs.getString("pass");
				if(dbPasswd.equals(pass)) {
					pstmt = conn.prepareStatement("delete from board_info where num=?");
					pstmt.setInt(1, num);
					pstmt.executeUpdate();
					result = 1; // 삭제 성공
				}
				else {
					result = 0; // 삭제 실패
				}
			
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
		
		return result;
	
	
	}	

		
}
