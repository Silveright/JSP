<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>dispatcher.jsp</title>
</head>
<body>
<script>
var id = "<%=request.getAttribute("id")%>"
var passwd = "<%=request.getAttribute("passwd")%>"
 if(id==("java")){
	 alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.")
 } else{alert("���̵� ��ġ���� �ʽ��ϴ�.")}


</script>
</body>
</html>
<%--
	���� �� �ּҶ��� �� Ȯ���Ѵ�.
	�������� �ּ�ǥ������ URL������ ������ ������ jsp�� ���� request������ �����ϱ� ������
	�̵��� jsp���������� request ������ �����Ǿ� �ִ� ���� ������ �����ϴ�.--%>