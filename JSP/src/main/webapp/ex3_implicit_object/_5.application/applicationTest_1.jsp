<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import = "java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Application Test-�ʱ�ȭ �Ķ���� �о����</title>
</head>

<body>
	<h2>�ʱ�ȭ �Ķ���� ���</h2>
	<ul>
	 <%
	 	Enumeration<String> initParamEnum = application.getInitParameterNames();
	 	
	 	while(initParamEnum.hasMoreElements()){
	 		String initParamName = initParamEnum.nextElement();
	 %>
		<li>
			<%=initParamName %> =
			<%= application.getInitParameter(initParamName) %>
		</li>
	 	<%
	 	}
	 	%>
	</ul>

</body>
</html>