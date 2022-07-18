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
<% String uploadPath = application.getRealPath("upload"); 
%>
<h1>파일 다운로드 폼</h1>
	<table class="table table-striped">
	<tr>
			<td>작성자</td>
			<td><%=session.getAttribute("name")%></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><%=session.getAttribute("subject")%></td>
		</tr>
		<tr>
			<td>파일명1</td>
			<td><%=session.getAttribute("fileName1")%></td>
		</tr>
		<tr>
			<td>파일명2</td>
			<td><%=session.getAttribute("fileName2")%></td>
		</tr>
		<tr>
			<td>uploadPath</td>
			<td><%=uploadPath%></td>
		</tr>
	</table>
</body>
</html>