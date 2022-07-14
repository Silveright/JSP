<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>dispatcher.jsp</title>
</head>
<body>
<script>
var id = "<%=request.getAttribute("id")%>"
var passwd = "<%=request.getAttribute("passwd")%>"
 if(id==("java")){
	 alert("비밀번호가 일치하지 않습니다.")
 } else{alert("아이디가 일치하지 않습니다.")}


</script>
</body>
</html>
<%--
	실행 후 주소란을 꼭 확인한다.
	브라우저의 주소표시줄의 URL변경이 없으며 서블릿과 jsp가 같은 request영역을 공유하기 때문에
	이동된 jsp페이지에서 request 영역에 공유되어 있는 값에 접근이 가능하다.--%>