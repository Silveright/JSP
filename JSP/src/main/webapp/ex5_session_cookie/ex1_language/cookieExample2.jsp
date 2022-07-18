<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%		
	//쿠키 객체를 생성하고 language1이라는 쿠키 이름에
	//입력받은 language 설정 값을 저장한다.
	Cookie cookie= new Cookie("language1", request.getParameter("language"));
	
	//시간을 설정하지 않으면 setMaxAge()메서드 사용하지 않는경우
	//브라우저 종료시 쿠키도 삭제된다.
	//또는 메서드를 호출할 때 인자값으로 0을주면 쿠키는 삭제된다.
	cookie.setMaxAge(60*60*24);//쿠키의 유효시간을 24시간으로 설정(단위:초)
	response.addCookie(cookie);//클라이언트로 쿠키값 전송
%>
<script>
	location.href="cookieExample.jsp"//cookieExample.jsp로 돌아간다.
</script>

