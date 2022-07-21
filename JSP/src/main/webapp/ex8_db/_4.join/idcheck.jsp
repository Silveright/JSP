<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	<div id=message></div>
	<button>닫기</button>
	<script>
		var message = ["사용 중인 아이디입니다.","사용 가능한 아이디입니다."];
		var color = ["red", "green"];
		var index =<%=result +1 %>;
		$("#message").text(message[index]).css('color',color[index]);
		
		$("button").click(function(){
			$(opener.document).find("#opener_message").text(message[index]).css('color',color[index]);
			$(opener.document).find("#result").val('<%=result%>');
			window.close();
		})
		
	</script>
</body>
</html>