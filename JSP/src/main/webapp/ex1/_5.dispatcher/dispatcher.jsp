<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>dispatcher.jsp</title>
<style>
body{background:pink}
div{color:red}
p{color:green}
</style>
</head>
<body>
<!-- request ��ü�� getParameter()�޼��带 �̿��ؼ� �Ķ���� "food"�� ���� �����´� -->
<%-- jsp���� <%=�� �Ǵ� ���� �Ǵ� ���� %>�� '�� �Ǵ� ���� �Ǵ� ����'�� ����϶�� �ǹ� --%>

	<div>
	request �Ķ���� ��: <%=request.getParameter("food") %>
	</div>
	<p>
		�����ִ� ������ �ּ� : <%=request.getRequestURL() %>
	</p>
</body>
</html>
<%--
	���� �� �ּҶ��� �� Ȯ���Ѵ�.
	�������� �ּ�ǥ������ URL������ ������ ������ jsp�� ���� request������ �����ϱ� ������
	�̵��� jsp���������� request ������ �����Ǿ� �ִ� ���� ������ �����ϴ�.--%>