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
		//result�� 0: ���̵� �������� �ʴ� ���
		//result�� -1:���̵� �����ϴ� ���
		int result = (int)request.getAttribute("result");
	%>
	<div id=message></div>
	<button>�ݱ�</button>
	<script>
		var message = ["��� ���� ���̵��Դϴ�.","��� ������ ���̵��Դϴ�."];
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