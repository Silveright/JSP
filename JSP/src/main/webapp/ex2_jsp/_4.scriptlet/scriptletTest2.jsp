<%-- 2. ��ũ��Ʈ��(Scriptlet)
	(1)HTML �ڵ�� �� �κ��� �Ϲ� HTML ����ó�� �״�� ����ϸ�
		�ڹ� �ڵ�� �̷���� ���� �κ��� <% ... %> �� ǥ���Ǵ� ��ũ��Ʈ�� �±׸�
		����Ͽ� �����Ѵ�.
	
	(2)JSP ������ ����� �� �� �����̳ʿ� ���� JSP �ڵ尡 ���� Ŭ������ ��ȯ�ȴ�.
		�̶� �Ϲ� ���� Ŭ������ service()�޼��忡 �ش��ϴ�
		_jspService()�޼��尡 �� �����̳ʿ� ���� �ڵ����� �����ǵǸ�
		�� �޼����� ���ο� JSP�ڵ尡 ���� �ȴ�.
		�̷��� �� �����̳ʿ� ���� ���� Ŭ������ �����Ǹ� �ν��Ͻ��� �����尡 �����ǰ�
		_jspService()�޼��忡 ���� ���� �������� ������� 
		Ŭ���̾�Ʈ�� ���۵Ǿ� ��� �������� ǥ�õȴ�. --%>
<!-- C:\Users\Home\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\
Catalina\localhost\JSP\org\apache\jsp\ex2_005fjsp\_005f4_scriptlet
������ scriptletTest_jsp.class, scriptletTest_jsp.java ������ �ִ�.
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
<script src="<%=request.getContextPath()%>/js/jquery-3.6.0.js"></script> <!-- �����η� ���� -->
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
	<h1>���� �ð��� <%=hour %>��<%=minute %>��<%=second %>�� �Դϴ�.</h1>
	<%
		if(hour >=12){
	%><h2>���� �Դϴ�.</h2>
	<%
		}else {
	%>
	<h2>���� �Դϴ�.</h2>
	<%
		}
	%>
</body>
</html>