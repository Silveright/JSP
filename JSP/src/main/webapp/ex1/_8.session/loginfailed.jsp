<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>redirect.jsp</title>
</head>
<body>

<script>
var id = "<%=session.getAttribute("id")%>"
var passwd = "<%=session.getAttribute("passwd")%>"
 if(id==("java")){
	 alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.")
 } else{alert("���̵� ��ġ���� �ʽ��ϴ�.")}


</script>
</body>
</html>
