<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α׾ƿ� ������</title>
</head>
<body>
	<%=session.getAttribute("id")%>�� �α׾ƿ� �Ǽ̽��ϴ�.<br>
	<% //session.removeAttribute("id"); //id�� �Ӽ��� ����
		session.invalidate(); //������ ��� �Ӽ��� ����
	%>
	<a href="login.jsp">�α���</a>
</body>
</html>
