<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 
<style>
input {
    background-color: #028002;
    color: white;
    padding: 10px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    text-align:right;
    font-weight:bold;
}

input:hover{opacity: 0.9}
</style>
	<%
	if(session.getAttribute("id")!=null){
	%>
	<input type=button
		value='<%=session.getAttribute("id")%>���� �α��� �Ǿ����ϴ�.(�α׾ƿ�)'
		onclick="location.href ='logout.jsp'">
	<%
	} else{
	%>
	<input type=button value="�α���" onclick="location.href ='login.jsp'">
	<% } 
	%>
