<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!-- 
 	include �׼� �±�
 	include �׼��� page �Ӽ��� ������ ó���� ������ ó�� �����
 	���� �������� �����ϴ� ����̴�.
 	
 	include ��Ƽ��� ������
 	include ��Ƽ��� ���� ������ ������ include ���þ�� ������ �������� �ҽ��ڵ尡
 	�״�� ���� �Ǿ� ���������
 	include �׼� �±״� page �Ӽ��� �������� �������� ���� ��ġ�� ���Խ�Ų��.
 	������ �߻��Ѵ�.
 -->
<html>
<head>
<meta charset="EUC-KR">
<title>Include Action Test</title>
</head>
<body>
<h2>��Ŭ��� �׼� �׽�Ʈ ����</h2>
<jsp:include page='includeTest.jsp'/>
<%-- <%=alias %><!-- ���� �߻� --> --%>
<h2>��Ŭ��� �׼� �׽�Ʈ ��</h2>
</body>
</html>