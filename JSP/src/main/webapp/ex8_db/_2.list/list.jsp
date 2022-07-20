<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page import="ex8_Dept.Dept" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ArrayList</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
 <style>
 .container{width:500px; margin-top:3em}
 
 table, h4{text-align:center;}
 </style>
</head>
<body>
	<div class="container">
	<%
		ArrayList<Dept> list = (ArrayList<Dept>) request.getAttribute("list");
		if(list != null){
	%>
		<table class="table">
			<thead>
				<tr>
					<td>DEPTNO</td>
					<td>DNAME</td>
					<td>LOC</td>
				</tr>
			</thead>
			<tbody>
				<%
					for(Dept dept:list){
				%>
				<tr>
					<td><%=dept.getDeptno() %></td>
					<td><%=dept.getDname() %></td>
					<td><%=dept.getLoc() %></td>
				</tr>
			<%
				} 
			%>	
			</tbody>
		</table>
		<%	 } else {
				out.print("<h4>조회된 데이터가 없습니다.</h4>");
			}
			%>
	
	</div>
</body>
</html>