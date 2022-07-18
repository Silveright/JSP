<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>templatetest.jsp</title>
<style>
	footer{position:fixed; bottom:10px; width:100%; text-align:center;background:silver;padding:10px}
</style>
</head>
<%
	String pagefile=request.getParameter("page");
if(pagefile ==null)

{

pagefile="newitem";

}
%>
<body>
	<header>
		<jsp:include page='<%="top.jsp" %>'/>
	</header>
	<nav>
		<jsp:include page='<%="left.jsp" %>'/>
	</nav>
	<div id="wrap">
		<aside>
		</aside>
		<section>
			<jsp:include page='<%=pagefile+".jsp" %>'/>
		</section>
	</div>
	<footer>
		<%@ include file="bottom.jsp" %>
	</footer>
</body>
</html>

