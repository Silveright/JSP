<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>dispatcher.jsp</title>
<style>
table{border-collapse:collapse;width:50%;margin:0 auto}
tr{height:3em; border-bottom:1px solid black }
td{width:60%}
</style>
</head>
<body>
<!-- request 객체의 getParameter()메서드를 이용해서 파라미터 "food"의 값을 가져온다 -->
<%-- jsp에서 <%=값 또는 수식 또는 변수 %>는 '값 또는 수식 또는 변수'를 출력하라는 의미 --%>
	<table>
		<tr><th>아이디</th><td><%=request.getAttribute("id") %></td></tr>
		<tr><th>비밀번호</th><td><%=request.getAttribute("pass") %></td></tr>
		<tr><th>주민번호</th><td><%=request.getAttribute("jumin1") %>-<%=request.getAttribute("jumin2") %></td></tr>
		<tr><th>e-mail</th><td><%=request.getAttribute("email") %>@<%=request.getAttribute("domain") %></td></tr>
		<tr><th>성별</th><td><%=request.getAttribute("gender") %></td></tr>
		<tr><th>취미</th><td><%=request.getAttribute("hobby") %></td></tr>
		<tr><th>우편번호</th><td><%=request.getAttribute("post1") %></td></tr>
		<tr><th>주소</th><td><%=request.getAttribute("address") %></td></tr>
		<tr><th>자기소개</th><td><%=request.getAttribute("intro") %></td></tr>
	</table>
	
</body>
</html>
<%--
	실행 후 주소란을 꼭 확인한다.
	브라우저의 주소표시줄의 URL변경이 없으며 서블릿과 jsp가 같은 request영역을 공유하기 때문에
	이동된 jsp페이지에서 request 영역에 공유되어 있는 값에 접근이 가능하다.--%>