<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 
<style>
div {
   padding:1%; text-align:right; background-color:green; color:white}
a{text-decoration:none; color:white; font-weight:bold}
div:hover{opacity:0.8}

input:hover{opacity: 0.9}
</style>
<div>
	<% String id=(String)session.getAttribute("id");
	if(id!=null && !id.equals("")){
	%>
	
		<%=id%>님이 로그인 되었습니다.
		<a href='logout.jsp'>(로그아웃)</a>
	<%
	} else{
	%>
	<a href='login.jsp'>로그인</a>
	<%
	} 
	%>
</div>
