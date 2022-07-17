<!-- ������ �⺻������ �����̳� ���ο� ������ ���� �� �����ϰ� ����� ������ �����ϱ� ���ؼ� ����ID��� ���� ����Ѵ�.
���� ID�� ��Ű�� ����ؼ� �����Ǹ� �̶��� ��Ű�̸��� JSESSIONID�̴�.

1)���� ������ ����
2)�����ϱ�
3)���ΰ�ħ > JSESSIONID�� �߰��� ���̴��� Ȯ��
 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Request Test2(requestTest2.jsp)</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
	<h1>��� ���� ����</h1>
	<table class="table table-striped">
		<tr>
			<td>����̸�</td>
			<td>�����</td>
		</tr>
		<%
			//getHeaderNames()�޼���: HTTP��û ����� ���Եȸ�� ��� �̸��� 
			//Enumeration��ü�� ����
			Enumeration<String> e = request.getHeaderNames();
			while(e.hasMoreElements()) {
				String headerName= e.nextElement();
		%>
		<tr>
			<td><%=headerName%></td>
			<td>
				<!-- getHeader(): �Ű������� ������ �̸����� �Ҵ�� ���� �����Ѵ�. ���� ��� null���� -->
				<%=request.getHeader(headerName) %>
			</td>
		</tr>
		<%
			}
		%>
	</table>
	</div>

</body>
</html>