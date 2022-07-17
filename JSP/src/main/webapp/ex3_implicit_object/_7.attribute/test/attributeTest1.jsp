<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="../../../css/ch5-2.css" type="text/css" rel="stylesheet">
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
	String name= request.getParameter("name");
	String id= request.getParameter("id");
	
	application.setAttribute("name",name);
	application.setAttribute("id",id);
%>
	<h2><%=application.getAttribute("name")%>님 반갑습니다.<br>
		<%=application.getAttribute("name")%>님의 아이디는 <%=application.getAttribute("id")%>입니다.</h2>
<form action="attributeTest2.jsp" method="post">
	<table>
	<tr><td colspan="2">Application 영역에 저장할 내용들</td></tr>
		<tr>
			<td>email 주소</td>
			<td><input type="text" name="email" id="email" required></td>
		</tr>
		<tr>
			<td>집 주소</td>
			<td><input type="text" name="address" id="address"  required></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="tel"  id="tel" required></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="전송"></td>
		</tr>
	</table>
	</form>
</body>
</html>