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
		String name="";
		String value="";
		//��Ű �������� Ȯ��
		String cookie= request.getHeader("Cookie");
		
		if(cookie != null){
			//��Ű���� �迭�� �����´�.
			Cookie cookies[] = request.getCookies();
			//��Ű�迭���� ��Ű �̸��� "name"�� ���� ã�� ��Ű �̸��� ���� ������
			for(int i=0; i<cookies.length;i++){
				if(cookies[i].getName().equals("name")){
					name=cookies[i].getName();//��Ű �̸��� �����´�.
					value=cookies[i].getValue();//��Ű ���� �����´�.
				}
			}
%>
	<h2>��Ű �̸� = <%=name%></h2>
	<h2>��Ű �� = <%=value%></h2>
	<%
		}else
	%>�����ϴ� ��Ű�� �����ϴ�.
	
</body>
</html>