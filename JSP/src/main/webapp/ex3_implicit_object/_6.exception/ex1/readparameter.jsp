<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- 현재 페이지 실행시 errorNullPointer.jsp가 실행된다. -->
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
name 파라미터 값: <%= request.getParameter("name").toUpperCase() %>
<!-- name 파라미터의 값을 대문자로 변환하여 출력한다.  -->
</body>
</html>