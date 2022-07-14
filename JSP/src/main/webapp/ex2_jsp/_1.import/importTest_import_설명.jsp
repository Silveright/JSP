<%--  JSP ���þ�(Directive)
	����) <%@ .... %>
		JSP ���� ������ JSP�� ������ �����̳ʿ��� �ش� �������� ��� 
		ó���� ���ΰ��� ���� ���� �������� ������ �ִµ� ���ȴ�.
		
		���þ��� ����) page ���þ�, include ���þ�, taglib ���þ�
		
	1.page ���þ�
		JSP�������� ���� �Ӽ��� �����ϴ� ���þ�
		����) <%@ page �Ӽ�=�� ....%>
	
	2.include ���þ�
		Ư���� JSP���� �Ǵ� HTML������ �ش� JSP�������� ������ �� �ֵ��� �ϴ� ����� �����ϴ� ���þ�
		����) <%@ include file="���ϰ��" %>
	
	3.taglib ���þ�� JSTL(JSP Standard Tag Library)�̳�
	  Ŀ���� �±� �� �±� ���̺귯���� JSP���� ����� �� ���λ縦 �����ϱ� ���� ���ȴ�.
	  ����) <%@ taglib uri="http://taglib.com/sampleURI" prefix="samplePrefix" %>
  --%>
<%@ page language="java" 
	contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!--    1. contentType:
   		JSP�������� �����ϴ� ������ ������ �� ������ �� �������� ������ �� ���Ǵ� ���ڵ� Ÿ�� 
   		������ ������ ������ ������ ���°� ��� MIME �������� �Ǿ��ִ��� �����ϴ� �Ӽ��̴�.
   		
   		MIME(Multipurpost Internet Mail Extension)�� ���ͳ��� ���� ������ �ְ� ���� �� ���Ǵ� ���� ������ ������ ���� ���̴�.
   		���� text/html, text/plain, image/gif, video/avi �� �������� Ÿ���� �����Ѵ�.
   
   2. charset=EUC-KR�� ������ �� �ִ�.
   		������ ��� �⺻ ĳ���ͼ��� ISO-8859-1�� ����ϰ� �ȴ�.
   
   3. pageEncoding : ���� �������� ���� ���ڵ� ����� ������ �� ����ϴ� �Ӽ��̴�.
   		�� �Ӽ��� �����Ǿ����� ������ contentType �Ӽ����� ������ �����ڵ�� JSP������ �о� ���δ�. -->
<!DOCTYPE html><!-- 
	SimpleDateFormatŬ���� ������� import
	import �Ӽ�: JSP ���������� ����� Ŭ����(�������̽�) ���� -->
<%@ page import="java.text.SimpleDateFormat"%>
<!-- DateŬ���� ������� import -->
<%@ page import="java.util.*"%><%-- 
 �� �� ������ �� �������� ��Ÿ���� ������ ����. �޸��� ������ �ۼ��Ѵ�.
 <%@ page import="java.text.SimpleDateFormat, java.util.*" %> 
 --%>
<html>
<head>
<meta charset="EUC-KR">
<title>import �Ӽ� �׽�Ʈ</title>
<style>
	body{background:yellow}
</style>
</head>
<body>
	<h1>���� �ð���
	<%=new SimpleDateFormat().format(new Date()) %>�Դϴ�.
	</h1>
</body>
</html>