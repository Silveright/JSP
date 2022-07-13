<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>scope.jsp</title>
</head>
<body>
<!-- request 객체의 getParameter()메서드를 이용해서 파라미터 "food"의 값을 가져온다 -->
<%-- jsp에서 <%=값 또는 수식 또는 변수 %>는 '값 또는 수식 또는 변수'를 출력하라는 의미 --%>

	<div>
	request 속성 food값 : <%=request.getAttribute("food") %><br>
	session 속성 food값 : <%=session.getAttribute("food") %><br>
	ServletContext 속성 food값 : <%=application.getAttribute("food") %>
	</div>
</body>
</html>
<%--
	이동될 때 브라우저의 주소 표시줄의 URL이 변경되므로 요청이 바뀌게 된다.
	따라서, 이동된 jsp페이지에서는 
	서블릿에서 request영역의 속성값에 접근할 수 없게됨--%>