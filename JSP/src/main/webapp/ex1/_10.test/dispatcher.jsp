<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>dispatcher.jsp</title>
<style>
table{border-collapse:collapse;width:50%;margin:0 auto}
tr{height:3em; border-bottom:1px solid black }
td{width:60%}
</style>
</head>
<body>
<!-- request ��ü�� getParameter()�޼��带 �̿��ؼ� �Ķ���� "food"�� ���� �����´� -->
<%-- jsp���� <%=�� �Ǵ� ���� �Ǵ� ���� %>�� '�� �Ǵ� ���� �Ǵ� ����'�� ����϶�� �ǹ� --%>
	<table>
		<tr><th>���̵�</th><td><%=request.getAttribute("id") %></td></tr>
		<tr><th>��й�ȣ</th><td><%=request.getAttribute("pass") %></td></tr>
		<tr><th>�ֹι�ȣ</th><td><%=request.getAttribute("jumin1") %>-<%=request.getAttribute("jumin2") %></td></tr>
		<tr><th>e-mail</th><td><%=request.getAttribute("email") %>@<%=request.getAttribute("domain") %></td></tr>
		<tr><th>����</th><td><%=request.getAttribute("gender") %></td></tr>
		<tr><th>���</th><td><%=request.getAttribute("hobby") %></td></tr>
		<tr><th>�����ȣ</th><td><%=request.getAttribute("post1") %></td></tr>
		<tr><th>�ּ�</th><td><%=request.getAttribute("address") %></td></tr>
		<tr><th>�ڱ�Ұ�</th><td><%=request.getAttribute("intro") %></td></tr>
	</table>
	
</body>
</html>
<%--
	���� �� �ּҶ��� �� Ȯ���Ѵ�.
	�������� �ּ�ǥ������ URL������ ������ ������ jsp�� ���� request������ �����ϱ� ������
	�̵��� jsp���������� request ������ �����Ǿ� �ִ� ���� ������ �����ϴ�.--%>