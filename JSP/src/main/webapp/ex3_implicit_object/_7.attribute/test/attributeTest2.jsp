<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
*{text-align:center}
span{padding:10px}
div{background:yellow;}
</style>
</head>
<body>
<h1>������ �Ӽ� �׽�Ʈ</h1>

<%
	request.setCharacterEncoding("euc-kr");

	String address= request.getParameter("address");
	String tel= request.getParameter("tel");
	String email= request.getParameter("email");
	
	session.setAttribute("email",email);
	session.setAttribute("address",address);
	session.setAttribute("tel",tel);

	String name=(String) application.getAttribute("name");
%>
	<h2><%=name%>���� ������ ��� ����Ǿ����ϴ�.</h2>
	<h3>
		<a href="attributeTest3.jsp">Ȯ���Ϸ� ����</a>
	</h3>

</body>
</html>