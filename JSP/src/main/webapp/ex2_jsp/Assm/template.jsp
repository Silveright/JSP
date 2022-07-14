<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>include 테스트</title>
<style>
	footer{position:fixed; bottom:10px; width:100%; text-align:center}
</style>
</head>
<body>
	<header>
		<%@ include file="header.jsp" %>
	</header>
	<h1> template.jsp 파일입니다.</h1>
	<footer>
		<%@ include file="footer.jsp" %>
	</footer>
</body>
</html>