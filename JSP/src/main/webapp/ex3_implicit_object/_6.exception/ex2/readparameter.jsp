<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- error�� �߻��� ��� errorPage �Ӽ��� ������ �������� �����ش�.-->
<%@ page errorPage = "../error/viewErrorMessage.jsp" %>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
name �Ķ���� ��: <%= request.getParameter("name").toUpperCase() %>
<!-- name �Ķ������ ���� �빮�ڷ� ��ȯ�Ͽ� ����Ѵ�.  -->

</body>
</html>