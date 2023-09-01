package join.model;

import java.sql.*;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import join.model.*;

public class memberDAO {
	
	private static memberDAO instance = null;
	
	private memberDAO() {}
	
	public static memberDAO getInstance() {
		
		if(instance==null) {
			synchronized(memberDAO.class) {
				instance=new memberDAO();
			}
		}
		
		return instance;
		
	}
	
	private Connection getConnection () {
		
		Connection conn = null;
		
		try {
			
			Context init=new InitialContext();
			DataSource ds=(DataSource)init.lookup("java:/comp/env/jdbc/myoracle");
			conn = ds.getConnection();
			
		}catch(NamingException ne) {
			System.out.println("Connection 생성 실패");
			ne.printStackTrace();
			
		}catch(SQLException s) {
			System.out.println("Connection 생성 실패");
			s.printStackTrace();
		}
		
		return conn;
		
	} // 데이터베이스 연결
	
	public boolean idCheck(String id) {
		boolean result = true;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
		
			conn = getConnection();
			String sql = "select * from join1 where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(!rs.next()) result = false; //rs의 next값이 존재하지 않는다면,,
			
			
			
	}catch(SQLException ss) {
		ss.printStackTrace();
		//System.out.println("sql Exception....");	
	}catch(Exception ss) {
		System.out.println("Exception....");			
	}finally{
		
		if(rs != null)
			try {rs.close();} catch(SQLException s){}
		
		if(pstmt != null)
			try {pstmt.close();} catch(SQLException s){}
		
		if(conn != null)
			try {conn.close();} catch(SQLException s){}
		
	}
		
		return result;
	}//end idCheck
	
	public boolean memberInsert(memberVO vo) {

		boolean flag = false;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			
			conn = getConnection();
			
			String sql = "insert into join1 values(?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getId());
			pstmt.setString(3, vo.getPassword());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getPhone1());
			pstmt.setString(6, vo.getGender());
			pstmt.setString(7, vo.getCal());
			pstmt.setString(8, vo.getTag());
					
			int count = pstmt.executeUpdate();
			if(count > 0) flag = true;
			
		}catch(SQLException ss) {
			
			System.out.println("sql Exception");
			ss.printStackTrace();
			
		}catch(Exception ee) {
			
			System.out.println("Exception");
			ee.printStackTrace();
			
		}finally{
			
			if(rs != null)
				try {rs.close();} catch(SQLException s){}
			
			if(pstmt != null)
				try {pstmt.close();} catch(SQLException s){}
			
			if(conn != null)
				try {conn.close();} catch(SQLException s){
				}
			}
		
			return flag;
		}//end memberInsert
	
	public int loginCheck(String id, String Password) {

		int check = -1; //아이디 존재하지 않음

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

		conn = getConnection();

		String sql = "select Password from join1 where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,id);
		rs= pstmt.executeQuery();
		
		if(rs.next()) {

			String dbPass=rs.getString("Password");
			
			if(Password.equals(dbPass)) check=1;
			else check=0;
		}

		}catch(SQLException ss) {
			
		ss.printStackTrace();
		System.out.println("sql Exception");
		
		}catch(Exception ee) {
			
		ee.printStackTrace();
		System.out.println("Exception");
		
		}finally{

		if(rs != null)
			try {rs.close();} catch(SQLException s){}

		if(pstmt != null)
			try {pstmt.close();} catch(SQLException s){}

		if(conn != null)
			try {conn.close();} catch(SQLException s){

		}

		}
		return check;
		}//loginCheck
	
	public memberVO getMember(String id) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		memberVO vo = null;

		try {

			conn = getConnection();
			String sql = "select * from join1 where id=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {//해당 id에 대한 회원이 존재하면 > 정보를 가져옴
				
				vo=new memberVO();
				
				vo.setName(rs.getString("name"));
				vo.setId(rs.getString("id")); //db에서 가져오는거>rs
				vo.setPassword(rs.getString("Password"));
				vo.setEmail(rs.getString("e_mail"));
				vo.setPhone1(rs.getString("phone"));
				vo.setGender(rs.getString("gender"));
				vo.setCal(rs.getString("birth"));
				vo.setTag(rs.getString("tag"));
				
				
			}
			
		}catch(SQLException ss) {
			
			ss.printStackTrace();
			System.out.println("sql Exception");	
			
		}catch(Exception ee) {
			
			ee.printStackTrace();
			System.out.println("Exception");	
			
		}finally{
			
			if(rs != null)
				try {rs.close();} catch(SQLException s){}

			if(pstmt != null)
				try {pstmt.close();} catch(SQLException s){}
			
			if(conn != null)
				try {conn.close();} catch(SQLException s){

		}
			
		}//end getMember
		return vo;
	}



}
