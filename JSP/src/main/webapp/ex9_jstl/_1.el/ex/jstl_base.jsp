<%--
   JSTL(JSP Standard Tag Library) 
   - 자주 사용되는 기능을 모아둔 커스텀 태그(개발자가 직접 정의할 수 있는 태그)입니다.
   
   JSTL 다운로드
   1) ① https://mvnrepository.com/ 접속
        검색어 "jstl" 입력
 
      ② https://mvnrepository.com/artifact/javax.servlet/jstl/1.2
        jstl-1.2.jar 다운로드합니다.
   
   2) 이클립스에 파일 넣기
      webapp - WEB-INF - lib - (jstl-1.2.jar) 
 --%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- taglib 지시어: JSTL이나 커스텀 태그 등 태그라이브러리를 JSP에서 사용할 때 접두사를 지정하기 위해 사용
	prefix 속성은 사용할 커스텀 태그의 네임스페이스를 지정하고 명시된 값은 태그 라이브러리를 호출 할 때 사용할 접두사를 의미한다.
	
	uri 속성은 태그 라이브러리에 정의한 태그와 속성 정보를 저장한 파일이 존재하는 위치를 지정한다.
	
	*taglib 장점: 사용하면 코드의 길이가 줄어들고 인식성이 좋아진다.
 -->
    <!-- jsp페이지에 core 라이브러리 등록 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- prefix="c": 사용할 태그의 네임스페이스의 이름
	예) <네임스페이스:태그이름/>
	<c:set/>
	
	uri ="http://java.sun.com/jsp/jstl/core"
	>>코어 라이브러리를 사용하겠다는 의미.
		정해진 주소이며 반드시 적어야함
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL core 라이브러리</title>
</head>
<body>
<%-- <c:set> 변수에 값을 설정하는 태그
	var: 값을 저장할 변수 이름
	value: 저장할 값 --%>
 <c:set var="test" value="Hello JSTL!"/>
 
 <h3>
 	&lt;c:set&gt; 사용 후 :
 	<c:out value='${test}'/><!-- 지정된 값을 출력하는 태그 -->
 <c:remove var="test"/><!-- 설정된 속성을 제거하는 태그 -->
 </h3>
 <h3>
 	&lt;c:set&gt; 사용 후 :
 	<c:out value="${test}"/>
 </h3>
 
 <c:catch var="err"><!-- 예외 처리를 위한 태그 
 						예외 발생시 var에 지정된 예외 객체가 할당된다. -->
 	<%=10/0 %>
 </c:catch>
 
 <h3>
 	&lt;c:catch&gt;로 잡아낸 오류 :
 	<c:out value="${err }"/>
 </h3>
 
 <c:if test="true">
 	조건식이 참이어서 무조건 수행한다.<br>
 </c:if>
 <c:if test="${5<10}">
 	<h3>5는 10보다 작다</h3><br>
 </c:if>
 <c:if test="${6+3==8}">
 	<h3>6더하기 3은 9다</h3><br>
 </c:if>
	
	<%-- 
		1.<c:choose>, <c:when>, <c:otherwise>
		 조건절이 여러개인 경우 사용
		 조건 중 만족하는 것이 있으면 실행하고 벗어난다.
		 (즉 한개만 실행- if~else if~else 문과 유사)
		 하나의 choose 태그에는 여러개의 when 태그가 존재
		 
		 2.문법
		 <c:choose>
			body content(<when> and <otherwise> subtags)
			조건 만족 시 실행 - 여러개 작성 가능
		<c:when test="testCondition">
			body content
		</c:when>
		<c:otherwise> 조건을 만족하지 않는 경우 실행
			conditional block
		</c:otherwise>
	</c:choose>
	--%>
	<c:choose>
		<c:when test="${5+10==50 }">
			<h3>5+10은 50이다.</h3>
		</c:when>
		
		<c:otherwise>
			<h3>5+10은 50이 아니다.</h3>
		</c:otherwise>
	</c:choose>
	
	
	<%--
		1.변수 a에 3설정
		2.a값이 1이면 1입니다. 2이면 2입니다. 1또는 2가 아니면 1또는 2가 아닙니다 출력
		3.a값을 1 증가시킴
		4.a값을 출력
	 --%>
	
	<c:set var="a" value="3"/>
	<c:choose>
		<c:when test="${a==1 }">
			<h3>1입니다.</h3>
		</c:when>
		<c:when test="${a==2 }">
			<h3>2입니다.</h3>
		</c:when>
		<c:otherwise>
			<h3>1또는 2가 아닙니다.</h3>
		</c:otherwise> 
	</c:choose>
	
 
	<c:set var="a" value='${a+1}'/>
	
	<h3>
		<c:out value="${a }"/>
	</h3>
	
	
	
	
	
	
	
	
</body>
</html>