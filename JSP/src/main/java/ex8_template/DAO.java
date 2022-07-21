package ex8_template;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import ex8_Dept.Dept;
import ex8_Emp.Emp;


public class DAO {
	public int insert(Template_join join) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int result =0;
		
		try {
			/*context.xml에 생성해 놓은 (JNDI에 설정해 놓은) 리소스 jdbc/OracleDB를
			  참조하여 Connection 객체를 얻어온다.*/
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
			
			String select_sql = "insert into template_join "
					+ "(id, password, jumin, email, gender, hobby, post, address, intro) "
					+ "values(?,?,?,?,?,?,?,?,?) ";
			//PreparedStatement 객체 얻기
			pstmt = conn.prepareStatement(select_sql.toString());
			pstmt.setString(1, join.getId());
			pstmt.setString(2, join.getPassword());
			pstmt.setString(3, join.getJumin());
			pstmt.setString(4, join.getEmail());
			pstmt.setString(5, join.getGender());
			pstmt.setString(6, join.getHobby());
			pstmt.setString(7, join.getPost());
			pstmt.setString(8, join.getAddress());
			pstmt.setString(9, join.getIntro());
			
			result = pstmt.executeUpdate();
		}catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if(pstmt !=null)
					pstmt.close();
			} catch (SQLException ex) {
				System.out.println(ex.getMessage());
				ex.printStackTrace();
			}
			try {
				if(conn != null)
					conn.close();//DB연결을 끊는다.
			}catch (Exception ex) {
				System.out.println(ex.getMessage());
				ex.printStackTrace();
			}
		}//finally end
		return result;
	}//()end

	public int isId(String id) { 
		return isId(id, null);//id 중복검사의 경우 id값만 존재하기 때문에 isId(id, pw)호출 시 pw는 null이 됨
	}
	//메서드 오버라이딩
	public int isId(String id, String password) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result =0;//아이디가 존재하지 않는 경우
		
		try {
			/*context.xml에 생성해 놓은 (JNDI에 설정해 놓은) 리소스 jdbc/OracleDB를
			  참조하여 Connection 객체를 얻어온다.*/
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
			
			String select_sql = "select id, password from template_join where id=?";
			//PreparedStatement 객체 얻기
			pstmt = conn.prepareStatement(select_sql.toString());
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString("password").equals(password)) {
					result=1;//아이디와 비밀번호가 일치 (로그인 성공)
				}else {
					result=-1;//아이디 일치, 비밀번호는 불일치 (로그인 실패)
				}
			}
			
		}catch(Exception se) {
			se.printStackTrace();
		} finally {
			try {
				if (rs!=null)
					rs.close();
			}catch(SQLException e) {
				System.out.println(e.getMessage());
			}
			try {
				if(pstmt != null)
					pstmt.close();
			}catch(SQLException e) {
				System.out.println(e.getMessage());
			}
			try {
				if(conn!=null)
					conn.close();
			}catch(Exception e) {
				System.out.println(e.getMessage());
			}
		}//finally end
		return result;
	}//()end


	public Template_join selectInfo(String id) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			/*context.xml에 생성해 놓은 (JNDI에 설정해 놓은) 리소스 jdbc/OracleDB를
			  참조하여 Connection 객체를 얻어온다.*/
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
			String select_sql = "select * from template_join where id=?";
			
			//PreparedStatement 객체 얻기
			pstmt = conn.prepareStatement(select_sql.toString());
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {//더이상 읽을 데이터가 없을 때까지 반복
				Template_join temp = new Template_join();
				/*
				 * temp.setId(rs.getString(1)); temp.setPassword(rs.getString(2));
				 * temp.setJumin(rs.getString(3)); temp.setEmail(rs.getString(4));
				 * temp.setGender(rs.getString(5)); temp.setHobby(rs.getString(6));
				 * temp.setPost(rs.getString(7)); temp.setAddress(rs.getString(8));
				 * temp.setIntro(rs.getString(9));
				 */				
				temp.setId(rs.getString("id"));
				temp.setPassword(rs.getString("password"));
				temp.setJumin(rs.getString("jumin"));
				temp.setEmail(rs.getString("email"));
				temp.setGender(rs.getString("gender"));
				temp.setHobby(rs.getString("hobby"));
				temp.setPost(rs.getString("post"));
				temp.setAddress(rs.getString("address"));
				temp.setIntro(rs.getString("intro"));
				temp.setRegister_date(rs.getString("register_date"));
				return temp;
			}
		}catch(Exception se) {
			se.printStackTrace();
		} finally {
			try {
				if (rs!=null)
					rs.close();
			}catch(SQLException e) {
				System.out.println(e.getMessage());
			}
			try {
				if(pstmt != null)
					pstmt.close();
			}catch(SQLException e) {
				System.out.println(e.getMessage());
			}
			try {
				if(conn!=null)
					conn.close();
			}catch(Exception e) {
				System.out.println(e.getMessage());
			}
		}//finally end
		return null;
	}
}