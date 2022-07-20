package ex8_search;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import ex8_Dept.Dept;
/*
 *DAO(Data Access Object)Ŭ����
 -������ ���̽��� �����Ͽ� ���ڵ��� �߰�, ����, ���� �۾��� �̷������ Ŭ����
*/
public class DAO {

	public ArrayList<Dept> select(int inputdeptno) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Dept> list = null;
		
		try {
			/*context.xml�� ������ ���� (JNDI�� ������ ����) ���ҽ� jdbc/OracleDB��
			  �����Ͽ� Connection ��ü�� ���´�.*/
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
			String select_sql = "select * from dept where deptno=?";
			
			//PreparedStatement ��ü ���
			pstmt = conn.prepareStatement(select_sql.toString());
			pstmt.setInt(1, inputdeptno);
			rs = pstmt.executeQuery();
			
			int i = 0;
			while (rs.next()) {//���̻� ���� �����Ͱ� ���� ������ �ݺ�
				int deptno = rs.getInt("deptno");
				String dname = rs.getString("dname");
				String loc = rs.getString("loc");
				Dept dept = new Dept();
				dept.setDeptno(deptno);
				dept.setDname(dname);
				dept.setLoc(loc);
				if(i++==0) {
					list = new ArrayList<Dept>();
				}
				list.add(dept);
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
