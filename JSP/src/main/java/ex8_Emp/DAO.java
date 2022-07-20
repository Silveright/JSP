package ex8_Emp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/*
 *DAO(Data Access Object)Ŭ����
 -������ ���̽��� �����Ͽ� ���ڵ��� �߰�, ����, ���� �۾��� �̷������ Ŭ����
*/
public class DAO {

	public ArrayList<Emp> selectAll() {
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
			
			String select_sql = "select * from emp";
			
			//PreparedStatement ��ü ���
			pstmt = conn.prepareStatement(select_sql.toString());
			rs = pstmt.executeQuery();
			
			int i = 0;
			while (rs.next()) {//���̻� ���� �����Ͱ� ���� ������ �ݺ�
				
				if(i++==0) {
					list = new ArrayList<Emp>();
				}
				Emp emp = new Emp();
				//������ ���̺� �÷��� ������ �˰� �ִ� ��� index�� ����� �� �ִ�.(�ε����� ���� ������ �ο���)
				emp.setEmpno(rs.getInt(1));
				emp.setEname(rs.getString(2));
				emp.setJob(rs.getString(3));
				emp.setMgr(rs.getInt(4));
				emp.setHiredate(rs.getDate(5));
				emp.setSal(rs.getInt(6));
				emp.setComm(rs.getInt(7));
				emp.setDeptno(rs.getInt(8));
				list.add(emp);
				
				
				
				/*int empno = rs.getInt("empno");
				String ename = rs.getString("ename");
				String job = rs.getString("job");
				int mgr = rs.getInt("mgr");
				Date hiredate = rs.getDate("hiredate");
				int sal = rs.getInt("sal");
				int comm = rs.getInt("comm");
				int deptno = rs.getInt("deptno");
				Emp emp = new Emp();
				emp.setEmpno(empno);
				emp.setEname(ename);
				emp.setJob(job);
				emp.setMgr(mgr);
				emp.setHiredate(hiredate);
				emp.setSal(sal);
				emp.setComm(comm);
				emp.setDeptno(deptno);
				
				if(i++==0) {
					list = new ArrayList<Emp>();
				}
				list.add(emp); */
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
