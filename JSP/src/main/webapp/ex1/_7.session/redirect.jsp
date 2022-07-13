<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>redirect.jsp</title>
<style>
body{background:#c7c7ef}
div{color:white; font-size:30px; font-weight:bold}
</style>
</head>
<body>
<!-- request 객체의 getParameter()메서드를 이용해서 파라미터 "food"의 값을 가져온다 -->
<%-- jsp에서 <%=값 또는 수식 또는 변수 %>는 '값 또는 수식 또는 변수'를 출력하라는 의미 --%>

	<div>
	request 속성 food값 : <%=request.getAttribute("food") %><br>
	session 속성 food값 : <%=session.getAttribute("food") %>
	<!-- session: 로그인 아이디 값저장할 때 사용(유지 단위: 브라우저 종료할 때까지)
		but 로그아웃이 이루어지면 세션에 저장된 값 제거 removeAttribute -->
	</div>
	<p>
	<!-- http://localhost:8088/JSP/ex1/_6.redirect/redirect.jsp -->
		요청 주소 : <%=request.getRequestURL() %>
	</p>
</body>
</html>
<%--
	이동될 때 브라우저의 주소 표시줄의 URL이 변경되므로 요청이 바뀌게 된다.
	따라서, 이동된 jsp페이지에서는 
	서블릿에서 request영역의 속성값에 접근할 수 없게됨--%>