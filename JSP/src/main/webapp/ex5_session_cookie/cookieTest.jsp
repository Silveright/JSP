<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cookie Test</title>
</head>
<body>
	<%
		//��Ű ����
		//"name" :��Ű �̸� "hong" :��Ű ��
		Cookie cookie = new Cookie("name", "hong");
	
		//cookie.setMaxAge(60*60*24);//��Ű �����ð��� ����(�Ϸ�)
		//������ �ʷ� �Ϸ縦 �����Ѵ�.
		
		cookie.setMaxAge(6);//6�� ���� ��Ű ���� �ð��� �����Ѵ�.
		response.addCookie(cookie);//������ ��Ű�� Ŭ���̾�Ʈ�� �����Ѵ�.
	%>
	<h2>
		��Ű �̸� :
		<%=cookie.getName() %>
	</h2>
	<h2>
		��Ű �� :<%=cookie.getValue() %>
	</h2>
	<h2>
		��Ű ���� �ð� :
		<%=cookie.getMaxAge()%>��
		(�� �ð��� ���� �� �Ʒ��� anchor�� Ŭ���ϼ���)
	</h2>
	<a href="cookieTest2.jsp">��Ű �� �ҷ�����</a>
</body>
</html>