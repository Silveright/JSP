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
<h1>������ �Ӽ� �׽�Ʈ</h1>

<%
	request.setCharacterEncoding("euc-kr");
	String name= request.getParameter("name");
	String id= request.getParameter("id");
	
	application.setAttribute("name",name);
	application.setAttribute("id",id);
%>
	<h2><%=application.getAttribute("name")%>�� �ݰ����ϴ�.<br>
		<%=application.getAttribute("name")%>���� ���̵�� <%=application.getAttribute("id")%>�Դϴ�.</h2>
<form action="attributeTest2.jsp" method="post">
	<table>
	<tr><td colspan="2">Application ������ ������ �����</td></tr>
		<tr>
			<td>email �ּ�</td>
			<td><input type="text" name="email" id="email" required></td>
		</tr>
		<tr>
			<td>�� �ּ�</td>
			<td><input type="text" name="address" id="address"  required></td>
		</tr>
		<tr>
			<td>��ȭ��ȣ</td>
			<td><input type="text" name="tel"  id="tel" required></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="����"></td>
		</tr>
	</table>
	</form>
</body>
</html>