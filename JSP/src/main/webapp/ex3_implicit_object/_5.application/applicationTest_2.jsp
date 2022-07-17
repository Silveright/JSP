<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import = "java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Application Test-초기화 파라미터 읽어오기</title>
</head>

<body>
	<h2>web.xml에서 설정한 색상으로 지정</h2>

	 <%
	 		String color = application.getInitParameter("color");
	 %>
	<div style="background:<%=color%>">나는 무슨 색인가요?
	</div>
</body>
</html>