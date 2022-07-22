<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- id 중복검사 버튼 누르면 나오는 팝업창 -->
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<meta charset="EUC-KR">
<title>idcheck.jsp</title>
</head>
<body>
	<%
		//result가 0: 아이디가 존재하지 않는 경우
		//result가 -1:아이디가 존재하는 경우
		int result = (int)request.getAttribute("result");
	%>
	<div id=message></div><!-- 제이쿼리에서 작성된 message가 들어가는 부분 -->
	<button>닫기</button><!-- window 닫는 버튼 -->
	<script>
		var message = ["사용 중인 아이디입니다.","사용 가능한 아이디입니다."];
		var color = ["red", "green"];
		var index =<%=result +1 %>;//result=0 or -1
		$("#message").text(message[index]).css('color',color[index]);
		//사용중인 아이디입니다. 사용가능한 아이디입니다. 출력 부분
		
		
		$("button").click(function(){
			//팝업 창을 열어 준 ID 중복 체크 버튼이 opener가 됨(join에 #opener_message 추가)>join.jsp가 부모가 됨
			$(opener.document).find("#opener_message").text(message[index]).css('color',color[index]);
			$(opener.document).find("#result").val('<%=result%>');
			window.close();
		})
		
	</script>
</body>
</html>