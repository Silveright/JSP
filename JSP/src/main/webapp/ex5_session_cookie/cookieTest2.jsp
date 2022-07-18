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
		//쿠키 생성여부 확인
		String cookie= request.getHeader("Cookie");
		
		if(cookie != null){
			//쿠키들을 배열로 가져온다.
			Cookie cookies[] = request.getCookies();
			//쿠키배열에서 쿠키 이름이 "name"인 것을 찾아 쿠키 이름과 값을 가져옴
			for(int i=0; i<cookies.length;i++){
				if(cookies[i].getName().equals("name")){
					name=cookies[i].getName();//쿠키 이름을 가져온다.
					value=cookies[i].getValue();//쿠키 값을 가져온다.
				}
			}
%>
	<h2>쿠키 이름 = <%=name%></h2>
	<h2>쿠키 값 = <%=value%></h2>
	<%
		}else
	%>존재하는 쿠키가 없습니다.
	
</body>
</html>