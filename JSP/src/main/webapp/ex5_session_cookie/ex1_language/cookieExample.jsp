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

		//header 이름 중 Cookie의 값을 가져온다.
		String cookie= request.getHeader("Cookie");
		
		//쿠키가 존재하는지 확인
		if(cookie != null){
			//쿠키들을 배열로 가져온다.
			Cookie cookies[] = request.getCookies();
			//쿠키배열에서 쿠키 이름이 "languae1"인 것을 찾아 쿠키 이름과 값을 가져옴
			for(int i=0; i<cookies.length;i++){
				if(cookies[i].getName().equals("language1")){
					language=cookies[i].getValue();//쿠키 값을 가져온다.
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
	<h3>안녕하세요. 이것은 쿠키 예제입니다.</h3>
	<%
		} else {
	%>
	<h3>Hello. This is Cookie example.</h3>
	<%
		}
	%>
	<form action="cookieExample2.jsp" method="post">
		<fieldset>
			<input type="radio" name="language" value="korea" id="korea">한국어 페이지 보기
			<input type="radio" name="language" value="english" id="english">영어 페이지 보기
			<input type="submit" value="설정">
		</fieldset>
	</form>
</body>
</html>