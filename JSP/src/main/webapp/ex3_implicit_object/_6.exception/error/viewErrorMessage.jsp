<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page isErrorPage = "true" %>
<!-- (1) page ��Ƽ���� errorPage �Ӽ��� ����ؼ� ���� �������� �����ϸ�
		 ������ ���� �������� isErrorPage �Ӽ��� ����  "true"�̾�� �Ѵ�.
	 (2) isErrorPage = "true" :���� �������� �������� �ǹ�
	  	 ������ �߻��� �� ������ ���� �������� ����ϰ� �ȴ�.
	 (3) exception�� page ���ù����� ���������� (isErrorPage="true")��
	 	 ������ JSP���������� ���ܰ� �߻��� �� ���޵Ǵ� java.lang.Throwable�� �ν��Ͻ��� ���� ���������̴�.
		
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �߻�:viewErrorMessage.jsp</title>
</head>
<body>
	��û ó���������� ������ �߻��Ͽ����ϴ�.<br>
	���� �ð� ���� ������ �ذ��ϵ��� �ϰڽ��ϴ�.
	<P>
		���� Ÿ��: <%=exception.getClass().getName() %><br>
		���� �޽���: <b><%= exception.getMessage() %></b>
	</P>
</body>
</html>