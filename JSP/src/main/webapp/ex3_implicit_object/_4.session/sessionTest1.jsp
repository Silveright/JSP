<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>���� ���� �� �޼��� ����</h1>
	<table class="table table-striped">
		<tr>
			<td>��Ű����</td>
			<% Cookie[] cookie = request.getCookies();
				if(cookie == null){//ó�� ��û�� ��
			%>
			<td>��Ű�� �������� �ʽ��ϴ�.</td>
			<%
				}else {//�� ��°���� ���� ��û�� ��
					for(int i=0; i<cookie.length; i++){
			%>
			<td><%=cookie[i].getName()%>(<%=cookie[i].getValue()%>)
				&nbsp;&nbsp;</td>						
			<%
					}
				}
			%>
		</tr>
		<tr>
			<td>���� ID</td>
			<td><%=session.getId()%></td>
		</tr>
		<tr>
		<!-- 
			1.��Ĺ�� web.xml�� �⺻ ���ǽð��� �Ʒ��� ���� 30��(1800��)���� �����Ǿ� �ִ�.
			<sessoion-config>
				<session-timeout>30</session-timeout>
			<sessoion-config>
			
			2.getMaxInactiveInterval():���� ��ȿ �ð��� �� ������ �����´�.
		
		 -->
			<td>���� ��ȿ�ð�</td>
			<td><%=session.getMaxInactiveInterval()/60 + "��"%></td>
		</tr>
		<tr>
			<td>���� ����</td>
			<td>�Ӽ� "id"�� "hong" ����<%session.setAttribute("id","hong"); %></td>
		</tr>
		<tr>
			<td>���� ���� �� ��������</td>
			<td><%=session.getAttribute("id")%></td>
		</tr>
	</table>
</div>
</body>
</html>