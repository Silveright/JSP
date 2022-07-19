<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");
	String systemName1 = request.getParameter("systemName1");
	String systemName2 = request.getParameter("systemName2");
	String origfileName1 = request.getParameter("origfileName1");
	String origfileName2 = request.getParameter("origfileName2");
	%>
<div class="container">
<h1>파일 다운로드 폼</h1>
	<table class="table table-bordered table-striped">
	<tr>
			<td>작성자</td>
			<td><%=request.getParameter("name")%></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><%=request.getParameter("subject")%></td>
		</tr>
		<tr>
			<td>파일명1</td>
			<td>
			<a href="file_down2.jsp?file_name=<%=systemName1 %>"><%=origfileName1 %></a>
			</td>
		</tr>
		<tr>
			<td>파일명2</td>
			<td>
			<a href="file_down2.jsp?file_name=<%=systemName2 %>"><%=origfileName2 %></a>
			</td>
		</tr>
		<tr>
			<td>uploadPath</td>
			<td><%=request.getParameter("uploadPath")%></td>
		</tr>
	</table>
</div>
</body>
</html>