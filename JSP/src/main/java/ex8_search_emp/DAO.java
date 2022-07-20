package ex8_search_emp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import ex8_Emp.Emp;

/*
 *DAO(Data Access Object)Ŭ����
 -������ ���̽��� �����Ͽ� ���ڵ��� �߰�, ����, ���� �۾��� �̷������ Ŭ����
*/
public class DAO {

	public ArrayList<Emp> select(int field, String search_word) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Emp> list = null;
		
		try {
			/*context.xml�� ������ ���� (JNDI�� ������ ����) ���ҽ� jdbc/OracleDB��
			  �����Ͽ� Connection ��ü�� ���´�.*/
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
			String[] field_name = {"empno","ename","job","mgr","hiredate","sal","comm","deptno"};
			String select_sql = "select * from emp where " + field_name[field] +" like ? ";
			//PreparedStatement ��ü ���
			pstmt = conn.prepareStatement(select_sql.toString());
			pstmt.setString(1, "%"+ search_word +"%");
			rs = pstmt.executeQuery();
			
			int i = 0;
			while (rs.next()) {//���̻� ���� �����Ͱ� ���� ������ �ݺ�
				
				if(i++==0) {
					list = new ArrayList<Emp>();
				}
				Emp emp = new Emp();
				emp.setEmpno(rs.getInt(1));
				emp.setEname(rs.getString(2));
				emp.setJob(rs.getString(3));
				emp.setMgr(rs.getInt(4));
				emp.setHiredate(rs.getDate(5));
				emp.setSal(rs.getInt(6));
				emp.setComm(rs.getInt(7));
				emp.setDeptno(rs.getInt(8));
				list.add(emp);
				
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
		return list;
		//return null;
	}//selectAll()end
}
