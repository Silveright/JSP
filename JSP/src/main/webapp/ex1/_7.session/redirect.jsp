<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>redirect.jsp</title>
<style>
body{background:#c7c7ef}
div{color:white; font-size:30px; font-weight:bold}
</style>
</head>
<body>
<!-- request ��ü�� getParameter()�޼��带 �̿��ؼ� �Ķ���� "food"�� ���� �����´� -->
<%-- jsp���� <%=�� �Ǵ� ���� �Ǵ� ���� %>�� '�� �Ǵ� ���� �Ǵ� ����'�� ����϶�� �ǹ� --%>

	<div>
	request �Ӽ� food�� : <%=request.getAttribute("food") %><br>
	session �Ӽ� food�� : <%=session.getAttribute("food") %>
	<!-- session: �α��� ���̵� �������� �� ���(���� ����: ������ ������ ������)
		but �α׾ƿ��� �̷������ ���ǿ� ����� �� ���� removeAttribute -->
	</div>
	<p>
	<!-- http://localhost:8088/JSP/ex1/_6.redirect/redirect.jsp -->
		��û �ּ� : <%=request.getRequestURL() %>
	</p>
</body>
</html>
<%--
	�̵��� �� �������� �ּ� ǥ������ URL�� ����ǹǷ� ��û�� �ٲ�� �ȴ�.
	����, �̵��� jsp������������ 
	�������� request������ �Ӽ����� ������ �� ���Ե�--%>