<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>redirect.jsp</title>
</head>
<body>

<script>
var id = "<%=session.getAttribute("id")%>"
var passwd = "<%=session.getAttribute("passwd")%>"
 if(id==("java")){
	 alert("비밀번호가 일치하지 않습니다.")
 } else{alert("아이디가 일치하지 않습니다.")}


</script>
</body>
</html>
