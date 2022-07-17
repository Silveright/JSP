<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- 현재 페이지 실행시 error500.jsp가 실행된다.
	8번 라인 오류를 발생시켜 500번 에러 확인 -->
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
name 파라미터 값: <%= request.getParameter("name").toUpperCase(); %>
<!-- ;를 추가한다. -->
</body>
</html>