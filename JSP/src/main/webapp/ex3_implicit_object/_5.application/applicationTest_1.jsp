<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import = "java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Application Test-초기화 파라미터 읽어오기</title>
</head>

<body>
	<h2>초기화 파라미터 목록</h2>
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