<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
  .container{width:70%; margin-top:30px; vertical-align: middle}
  h3{text-align:center}
</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>

</head>
<body>
<div class="container">
<h3>Request �����Դϴ�.</h3>
	<table class="table">
				<tr>
					<td>�̸�</td>
					<td><% out.print(request.getParameter("name")); %></td>
				</tr>
				<tr>
					<td>����</td>
					<td>
					<% if(request.getParameter("gender").equals("male")) 
						out.print("����");
					 else
						out.print("����");
					%>
					</td>
				</tr>
				<tr>
					<td>���</td>
					<td>
					<!-- 
						hobby�� �̸��� ���� �Ķ���ʹ� �������� ���� ���� �� �����Ƿ� 
						getParameterValues()�޼��带 ����Ͽ� String �迭�� ���� �����´�.
					 -->
						<% String[] hobby=request.getParameterValues("hobby");
							for(int i=0; i<hobby.length; i++)
						
							out.print(hobby[i] + "  ");
						%>
						<%-- 
							<% String[] hobbys=request.getParameterValues("hobby");
							for(String hobby : hobbys){
						%>
							<%=hobby%>&nbsp;&nbsp;
							<% } %>	 
							--%>
					</td>
				</tr>
			</table>
			</div>
</body>
</html>