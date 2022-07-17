<!-- 세션은 기본적으로 컨테이너 내부에 정보를 저장 및 관리하고 저장된 정보에 접근하기 위해서 세션ID라는 것을 사용한다.
세션 ID는 쿠키를 사용해서 유지되며 이때의 쿠키이름은 JSESSIONID이다.

1)기존 브라우저 종료
2)실행하기
3)새로고침 > JSESSIONID가 추가로 보이는지 확인
 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Request Test2(requestTest2.jsp)</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
	<h1>헤더 정보 예제</h1>
	<table class="table table-striped">
		<tr>
			<td>헤더이름</td>
			<td>헤더값</td>
		</tr>
		<%
			//getHeaderNames()메서드: HTTP요청 헤더에 포함된모든 헤더 이름을 
			//Enumeration객체로 리턴
			Enumeration<String> e = request.getHeaderNames();
			while(e.hasMoreElements()) {
				String headerName= e.nextElement();
		%>
		<tr>
			<td><%=headerName%></td>
			<td>
				<!-- getHeader(): 매개변수로 지정된 이름으로 할당된 값을 리턴한다. 없는 경우 null리턴 -->
				<%=request.getHeader(headerName) %>
			</td>
		</tr>
		<%
			}
		%>
	</table>
	</div>

</body>
</html>