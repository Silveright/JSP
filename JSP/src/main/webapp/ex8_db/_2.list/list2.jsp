<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page import="ex8_Emp.Emp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ArrayList</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
 <style>
 .container{margin-top:3em}
 
 table, h4{text-align:center;}
 </style>
</head>
<body>
	<div class="container">
	 <p>검색어를 입력하세요.</p>  
  <input class="form-control" id="myInput" type="search" placeholder="Search..">
	<%
		ArrayList<Emp> list = (ArrayList<Emp>) request.getAttribute("list");
		if(list != null){
	%>
		<table class="table table-striped" >
			<thead>
				<tr>
					<td>EMPNO</td>
					<td>ENAME</td>
					<td>JOB</td>
					<td>MGR</td>
					<td>HIREDATE</td>
					<td>SAL</td>
					<td>COMM</td>
					<td>DEPTNO</td>
				</tr>
			</thead>
			<tbody id="myTable">
				<%
					for(Emp emp:list){
				%>
				<tr>
					<td><%=emp.getEmpno() %></td>
					<td><%=emp.getEname() %></td>
					<td><%=emp.getJob() %></td>
					<td><%=emp.getMgr() %></td>
					<td><%=emp.getHiredate() %></td>
					<td><%=emp.getSal() %></td>
					<td><%=emp.getComm() %></td>
					<td><%=emp.getDeptno() %></td>
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
	<script>
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
</script>
</body>
</html>