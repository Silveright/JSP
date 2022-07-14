<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login.jsp</title>
<link href="../../css/ch03-1.css" type="text/css" rel="stylesheet">
</head>
<body>
	<form action="login_ok" method="post">
	아이디 : <input type="text" name="id" required><br>
	비밀번호 : <input type="password" name="passwd" required><br>
	<div class="clearfix">
		<button type="submit" class="submitbtn">전송 </button>
		<button type="reset" class="cancelbtn">취소 </button>
	</div>
	</form>
</body>
</html>