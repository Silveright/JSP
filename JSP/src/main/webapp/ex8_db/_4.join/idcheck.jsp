<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!-- id �ߺ��˻� ��ư ������ ������ �˾�â -->
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
	<div id=message></div><!-- ������������ �ۼ��� message�� ���� �κ� -->
	<button>�ݱ�</button><!-- window �ݴ� ��ư -->
	<script>
		var message = ["��� ���� ���̵��Դϴ�.","��� ������ ���̵��Դϴ�."];
		var color = ["red", "green"];
		var index =<%=result +1 %>;//result=0 or -1
		$("#message").text(message[index]).css('color',color[index]);
		//������� ���̵��Դϴ�. ��밡���� ���̵��Դϴ�. ��� �κ�
		
		
		$("button").click(function(){
			//�˾� â�� ���� �� ID �ߺ� üũ ��ư�� opener�� ��(join�� #opener_message �߰�)>join.jsp�� �θ� ��
			$(opener.document).find("#opener_message").text(message[index]).css('color',color[index]);
			$(opener.document).find("#result").val('<%=result%>');
			window.close();
		})
		
	</script>
</body>
</html>