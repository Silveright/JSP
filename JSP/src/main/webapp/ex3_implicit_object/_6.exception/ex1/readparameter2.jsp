<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- ���� ������ ����� error500.jsp�� ����ȴ�.
	8�� ���� ������ �߻����� 500�� ���� Ȯ�� -->
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
name �Ķ���� ��: <%= request.getParameter("name").toUpperCase(); %>
<!-- ;�� �߰��Ѵ�. -->
</body>
</html>