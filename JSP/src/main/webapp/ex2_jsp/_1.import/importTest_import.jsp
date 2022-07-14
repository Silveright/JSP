<%@ page language="java" 
	contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ page import="java.text.SimpleDateFormat,java.util.*"%>
<html>
<head>
<meta charset="EUC-KR">
<title>import 속성 테스트</title>
<style>
	body{background:yellow}
</style>
</head>
<body>
	<h1>현재 시간은
	<%=new SimpleDateFormat().format(new Date()) %>입니다.
	</h1>
</body>
</html>