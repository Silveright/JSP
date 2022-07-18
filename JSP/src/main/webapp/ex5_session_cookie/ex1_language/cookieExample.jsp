<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
	body{margin:100px auto; text-align:center; width:500px;}
	fieldset{width:100%}
	form{height:3em;line-height:3em}
</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="<%=request.getContextPath()%>/js/jquery-3.6.0.js"></script>
<%		
		String language="korea";

		//header �̸� �� Cookie�� ���� �����´�.
		String cookie= request.getHeader("Cookie");
		
		//��Ű�� �����ϴ��� Ȯ��
		if(cookie != null){
			//��Ű���� �迭�� �����´�.
			Cookie cookies[] = request.getCookies();
			//��Ű�迭���� ��Ű �̸��� "languae1"�� ���� ã�� ��Ű �̸��� ���� ������
			for(int i=0; i<cookies.length;i++){
				if(cookies[i].getName().equals("language1")){
					language=cookies[i].getValue();//��Ű ���� �����´�.
				}
			}
		}
%>
<script>
	$(function(){
		var id = "#<%=language%>";
		console.log(id);
		<%-- var id = "input[value= '<%=language%>']"--%>
		$(id).prop('checked',true);
			
	})
</script>
</head>
<body>
	<%
		if(language.equals("korea")){
	%>
	<h3>�ȳ��ϼ���. �̰��� ��Ű �����Դϴ�.</h3>
	<%
		} else {
	%>
	<h3>Hello. This is Cookie example.</h3>
	<%
		}
	%>
	<form action="cookieExample2.jsp" method="post">
		<fieldset>
			<input type="radio" name="language" value="korea" id="korea">�ѱ��� ������ ����
			<input type="radio" name="language" value="english" id="english">���� ������ ����
			<input type="submit" value="����">
		</fieldset>
	</form>
</body>
</html>