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
<h3>Request 예제입니다.</h3>
	<table class="table">
				<tr>
					<td>이름</td>
					<td><% out.print(request.getParameter("name")); %></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
					<% if(request.getParameter("gender").equals("male")) 
						out.print("남자");
					 else
						out.print("여자");
					%>
					</td>
				</tr>
				<tr>
					<td>취미</td>
					<td>
					<!-- 
						hobby란 이름을 가진 파라미터는 여러개의 값을 가질 수 있으므로 
						getParameterValues()메서드를 사용하여 String 배열로 값을 가져온다.
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