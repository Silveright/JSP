<%-- 2. 스크립트릿(Scriptlet)
	(1)HTML 코드로 된 부분은 일반 HTML 파일처럼 그대로 사용하며
		자바 코드로 이루어진 로직 부분은 <% ... %> 로 표현되는 스크립트릿 태그를
		사용하여 구분한다.
	
	(2)JSP 파일이 실행될 때 웹 컨테이너에 의해 JSP 코드가 서블릿 클래스로 변환된다.
		이때 일반 서블릿 클래스의 service()메서드에 해당하는
		_jspService()메서드가 웹 컨테이너에 의해 자동으로 재정의되며
		이 메서드의 내부에 JSP코드가 들어가게 된다.
		이렇게 웹 컨테이너에 의해 서블릿 클래스가 생성되면 인스턴스와 스레드가 생성되고
		_jspService()메서드에 의해 응답 페이지가 만들어져 
		클라이언트에 전송되어 결과 페이지가 표시된다. --%>
<!-- C:\Users\Home\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\
Catalina\localhost\JSP\org\apache\jsp\ex2_005fjsp\_005f4_scriptlet
폴더에 scriptletTest_jsp.class, scriptletTest_jsp.java 파일이 있다.
 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import= "java.util.Calendar" %>
<%
	Calendar c = Calendar.getInstance();
	int hour = c.get(Calendar.HOUR_OF_DAY);
	int minute= c.get(Calendar.MINUTE);
	int second= c.get(Calendar.SECOND);
	int time = c.get(Calendar.AM_PM);
%>
<html>
<head>
<!-- <script src="../../js/jquery-3.6.0.js"></script> -->
<script src="<%=request.getContextPath()%>/js/jquery-3.6.0.js"></script> <!-- 절대경로로 지정 -->
<!-- <script src="http://code.jquery.com/jquery-latest.js"></script> -->
 <script>
$(function(){
	var hour =<%=hour%>;
	var color ="yellow";
	
	if(hour<=12)
		color='pink'
	
	<%-- if(<%=hour%> >=12 ){
		color="pink"}
	else{color="yellow"} --%>
	$('body').css("background-color", color);
});
</script>
<title>Scriptlet Test</title>
</head>
<body>
	<h1>현재 시간은 <%=hour %>시<%=minute %>분<%=second %>초 입니다.</h1>
	<%
		if(hour >=12){
	%><h2>오후 입니다.</h2>
	<%
		}else {
	%>
	<h2>오전 입니다.</h2>
	<%
		}
	%>
</body>
</html>