<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- 
 	include 액션 태그
 	include 액션은 page 속성의 페이지 처리가 끝나면 처리 결과를
 	원래 페이지로 리턴하는 방식이다.
 	
 	include 디렉티브와 차이점
 	include 디렉티브는 원래 페이지 안으로 include 지시어로 지정한 페이지의 소스코드가
 	그대로 복사 되어 실행되지만
 	include 액션 태그는 page 속성의 페이지의 실행결과를 현재 위치에 포함시킨다.
 	에러가 발생한다.
 -->
<html>
<head>
<meta charset="EUC-KR">
<title>Include Action Test</title>
</head>
<body>
<h2>인클루드 액션 테스트 시작</h2>
<jsp:include page='includeTest.jsp'/>
<%-- <%=alias %><!-- 에러 발생 --> --%>
<h2>인클루드 액션 테스트 끝</h2>
</body>
</html>