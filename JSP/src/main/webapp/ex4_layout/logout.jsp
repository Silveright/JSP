<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α׾ƿ� ������</title>
</head>
<% //session.removeAttribute("id"); //id�� �Ӽ��� ����
session.invalidate(); //������ ��� �Ӽ��� ����
application.removeAttribute("id");
%>
<script>
alert('�α׾ƿ� �Ǿ����ϴ�.');
location.href="templatetest.jsp";
</script>
</html>
