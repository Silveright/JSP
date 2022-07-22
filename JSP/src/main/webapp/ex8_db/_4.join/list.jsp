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
 </style>
</head>
<body>
	<jsp:include page="top.jsp" />
	<div class="container">
	<%
		ArrayList<Template_join> list = (ArrayList<Template_join>) request.getAttribute("list");
		if(list != null){
	%>
		<table class="table" >
			<thead>
				<tr>
					<th>��ȣ</th>
					<th>���̵�</th>
					<th>����</th>
					<th>���</th>
					<th>�ڱ�Ұ�</th>
					<th>������</th>
					<th>����</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<%	
					int i=0;
					for(Template_join temp:list){
				%>
				<tr>
					<td><%=++i %></td>
					<td><a href="detail?id=<%=temp.getId() %>"><%=temp.getId() %></a></td>
					<td><%=temp.getGenderView() %></td>
					<td><%=temp.getHobby() %></td>
					<td><%=temp.getIntro() %></td>
					<td><%=temp.getRegister_date() %></td>
					<td><button class="btn btn-danger btn-sm">����</button></td>
				</tr>
			<%
				} 
			%>	
			</tbody>
		</table>
		<%	 } else {
				out.print("<h4>��ȸ�� �����Ͱ� �����ϴ�.</h4>");
			}
			%>
	
	</div>
	<script>
 	$("td>button").click(function(){
 		var answer = confirm("���� �����Ͻðڽ��ϱ�?");
 		/* <form action=delete method=post><input name = id value= Java1><input type=submit></form> */
 		//#myTable > tr:nth-child(1) > td:nth-child(2) > a
 		if(answer){
 			output = "<form action=delete method=post>";
 			output += "<input name = id value = " + $(this).parent().parent().find(":nth-child(2)").text()+">";
 			output += "<input type=submit>";
 			output += "</form>";
 			
 			console.log(output);
 			
 			$("body").append(output);
 			$("form").submit();//���� submit�Ѵ�.
 			$('form').css('display','none');
 		}else{
 			alert("��Ҹ� �����ϼ̽��ϴ�.")
 		}
 	})
 	
 	var result = '<%=session.getAttribute("del_result")%>';
 	if(result !='null'){
 		if(result==1){
 			alert("���� �����Դϴ�.");
 		}else{
 			alert("���� �����Դϴ�.");
 		}
 		<%session.removeAttribute("del_result");%>
 	}
</script>
</body>
</html>