<!-- 1. Java Naming and Directory Interface(JNDI)��
		Java ���ø����̼��� ��Ʈ��ũ���� �̸�(name)�� �̿��Ͽ�
		��ü�� ã�� ������ �� �ֵ��� �ϴ� ǥ�� API�Դϴ�.
		
		*JNDI�� ����ϸ� Java ���α׷��̳� JSP����������
		 ���� ���α׷� ���� �Ǵ� �ܺο��� ������ �ڿ��� ���� �� �� �ִ�.
		
		*������ ���̽� Ŀ�ؼ� Ǯ���� ����ϰ� �� DataSource ��ü��
		 ���̹� ���񽺸� ���� �����̳ʿ��� �����Ѵ�.

	2. DBCP(Database Connection Pool)
		�����ͺ��̽��� ����� Ŀ�ؼ��� �̸� ���� Ǯ(pool)�ӿ� �����صΰ� �ִٰ�
		�ʿ��� �� Ŀ�ؼ��� Ǯ���� ���� �ٽ� Ǯ�� ��ȯ�ϴ� ����� ���Ѵ�.
		�� ���α׷������� �����ͺ��̽��� ȯ�漳���� ����������� ���� XML�����̳�
		�Ӽ� ������ ����ؼ� �����ϰ�,
		�̷��� ������ ������ �̸��� ����Ͽ� ȹ���ϴ� ����� ����Ѵ�.
		
		*DBCP�� �̿��� ���ؼ� Ǯ�� ����ϱ� ���� ���� ��Ĺ�� DataSource�� ����ؾ� �Ѵ�.
		context.xml(���ø����̼� ���ؽ�Ʈ�� ���õ� ������ �ϴ� ����)���� ���
		�� �� ������ ��ġ�� META-INF�� �����Ѵ�.
		
		*DBCP ���̺귯��: tomcat-dbcp.jar����

	3.DataSource �̿���
		1) lookup()�޼��带 ���� DataSource ��ü�� ���´�.
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		2) DataSource ��ü�� getConnection()�޼��带 ���ؼ�
		   Connection Pool���� Connection�� ȹ���Ѵ�.
		3) Connection ��ü�� ���� DBMS �۾��� �����Ѵ�.
		4) ��� �۾��� ������ DataSource��ü�� ���ؼ� Connection Pool��
		   Connection�� �ݳ��Ѵ�.
 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- Connection ��ü�� JNDI�� ����ϱ� ���� ��Ű�� import
	�Ϲ� ������ ���̽� �۾��� ���� import�Ѵ�.
 -->    
<%@page import="java.sql.*" %>

<!-- javax.sql.DataSource ��ü ����� ���� import  -->
<%@ page import="javax.sql.*" %>

<!-- JNDI �۾��� ���� import -->
<%@ page import="javax.naming.*" %>

<%
	Connection conn = null;
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		out.println("<h3>���ؼ� Ǯ�� ����Ǿ����ϴ�.</h3>");
		conn.close();
	}catch(Exception e){
		out.println("<h3>���ؼ� Ǯ ���ῡ �����Ͽ����ϴ�.</h3>");
		e.printStackTrace();
	}
%>