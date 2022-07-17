<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
*{text-align:center}
span{padding:10px}
div{background:yellow;}
</style>
</head>
<body>
<h1>영역과 속성 테스트</h1>

<%
	request.setCharacterEncoding("euc-kr");

	String address= request.getParameter("address");
	String tel= request.getParameter("tel");
	String email= request.getParameter("email");
	
	session.setAttribute("email",email);
	session.setAttribute("address",address);
	session.setAttribute("tel",tel);

	String name=(String) application.getAttribute("name");
%>
	<h2><%=name%>님의 정보가 모두 저장되었습니다.</h2>
	<h3>
		<a href="attributeTest3.jsp">확인하러 가기</a>
	</h3>

</body>
</html>