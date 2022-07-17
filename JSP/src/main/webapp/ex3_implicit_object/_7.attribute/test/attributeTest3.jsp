<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
*{text-align:center}
</style>
<link href="../../../css/ch5-12.css" type="text/css" rel="stylesheet">
</head>
<body>
<h1>영역과 속성 테스트</h1>
<%
	/* request.setCharacterEncoding("euc-kr");
	String name= request.getParameter("name");
	String id= request.getParameter("id");
	String address= request.getParameter("address");
	String tel= request.getParameter("tel");
	String email= request.getParameter("email");
	application.setAttribute("name",name);
	application.setAttribute("id",id);
	application.setAttribute("address",address);
	application.setAttribute("tel",tel);
	application.setAttribute("email",email); */
%>
	<table>
		<tr>
			<td colspan=2>Application영역에 저장된 내용들</td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=application.getAttribute("name") %></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><%=application.getAttribute("id") %></td>
		</tr>
	</table>		
	<br>
	<table>
		<tr>
			<td colspan=2>Session영역에 저장된 내용들</td>
		</tr>
		<tr>
			<td>주소</td>
			<td><%=session.getAttribute("address") %></td>
		</tr>
		<tr>
			<td>tel</td>
			<td><%=session.getAttribute("tel") %></td>
		</tr>
		<tr>
			<td>email</td>
			<td><%=session.getAttribute("email") %></td>
		</tr>
	</table>		
</body>
</html>