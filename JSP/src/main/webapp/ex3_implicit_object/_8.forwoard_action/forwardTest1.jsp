<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- �׼� �±�: �±׸� �̿��� �ٸ� �������� ������ ������ �� �ֵ��� ������ ���
forward �׼��� ���� �������� �ٸ� �������� ��ȯ�� �� ����Ѵ�. -->
<title>�׼� �±� - forward</title>
</head>
<body>
<%
	request.setAttribute("food","����");
%>
<jsp:forward page='forwardTest2.jsp'/>
</body>
</html>