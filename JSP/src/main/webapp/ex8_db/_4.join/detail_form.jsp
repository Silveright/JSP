<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page import="ex8_template.Template_join" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>list.jsp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

 <style>
 .container{margin-top:3em}
 
 table, h4{text-align:center;}
 
 caption{text-align:center;
 	font-weight:bold;
 	caption-side:top;
 	font-size:1.5em;}
 </style>
</head>
<body>
	<jsp:include page="top.jsp" />
	<div class="container">
	<%
		Template_join temp = (Template_join) request.getAttribute("temp");
		if(temp != null){
	%>
		<table class="table table-striped table-bordered" >
				<caption><%=temp.getId()%>상세정보</caption>
				<tr>
					<th>아이디</th>
					<td><%=temp.getId()%></td>
				</tr>
				<tr>
					<th>주민번호</th>
					<td><%=temp.getJumin()%></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><%=temp.getEmail()%></td>
				</tr>
				<tr>
					<th>성별</th>
					<td><%=temp.getGenderView()%></td>
				</tr>
				<tr>
					<th>취미</th>
					<td><%=temp.getHobby()%></td>
				</tr>
				<tr>
					<th>우편번호</th>
					<td><%=temp.getPost()%></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><%=temp.getAddress()%></td>
				</tr>
				<tr>
					<th>자기소개</th>
					<td><%=temp.getIntro()%></td>
				</tr>
				<tr>
					<th>가입일</th>
					<td><%=temp.getRegister_date()%></td>
				</tr>
		</table>
		<%	 } else {
				out.print("<h4>조회된 데이터가 없습니다.</h4>");
			}
			%>
	
	</div>
</body>
</html>