<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="../../../css/ch5-2.css" type="text/css" rel="stylesheet">
<style>
*{text-align:center}
table{margin:0 auto}
</style>
</head>
<body>
<h1>영역과 속성 테스트</h1>
<form action="attributeTest1.jsp" method="post">
	<table>
		<tr><td colspan="2">Application 영역에 저장할 내용들</td></tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" required></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" required></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="전송"></td>
		</tr>
	</table>
	</form>
</body>
</html>