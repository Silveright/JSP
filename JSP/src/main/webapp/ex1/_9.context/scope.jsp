<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>scope.jsp</title>
</head>
<body>
<!-- request ��ü�� getParameter()�޼��带 �̿��ؼ� �Ķ���� "food"�� ���� �����´� -->
<%-- jsp���� <%=�� �Ǵ� ���� �Ǵ� ���� %>�� '�� �Ǵ� ���� �Ǵ� ����'�� ����϶�� �ǹ� --%>

	<div>
	request �Ӽ� food�� : <%=request.getAttribute("food") %><br>
	session �Ӽ� food�� : <%=session.getAttribute("food") %><br>
	ServletContext �Ӽ� food�� : <%=application.getAttribute("food") %>
	</div>
</body>
</html>
<%--
	�̵��� �� �������� �ּ� ǥ������ URL�� ����ǹǷ� ��û�� �ٲ�� �ȴ�.
	����, �̵��� jsp������������ 
	�������� request������ �Ӽ����� ������ �� ���Ե�--%>