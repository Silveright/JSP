<%--
   JSTL(JSP Standard Tag Library) 
   - ���� ���Ǵ� ����� ��Ƶ� Ŀ���� �±�(�����ڰ� ���� ������ �� �ִ� �±�)�Դϴ�.
   
   JSTL �ٿ�ε�
   1) �� https://mvnrepository.com/ ����
        �˻��� "jstl" �Է�
 
      �� https://mvnrepository.com/artifact/javax.servlet/jstl/1.2
        jstl-1.2.jar �ٿ�ε��մϴ�.
   
   2) ��Ŭ������ ���� �ֱ�
      webapp - WEB-INF - lib - (jstl-1.2.jar) 
 --%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- taglib ���þ�: JSTL�̳� Ŀ���� �±� �� �±׶��̺귯���� JSP���� ����� �� ���λ縦 �����ϱ� ���� ���
	prefix �Ӽ��� ����� Ŀ���� �±��� ���ӽ����̽��� �����ϰ� ��õ� ���� �±� ���̺귯���� ȣ�� �� �� ����� ���λ縦 �ǹ��Ѵ�.
	
	uri �Ӽ��� �±� ���̺귯���� ������ �±׿� �Ӽ� ������ ������ ������ �����ϴ� ��ġ�� �����Ѵ�.
	
	*taglib ����: ����ϸ� �ڵ��� ���̰� �پ��� �νļ��� ��������.
 -->
    <!-- jsp�������� core ���̺귯�� ��� -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- prefix="c": ����� �±��� ���ӽ����̽��� �̸�
	��) <���ӽ����̽�:�±��̸�/>
	<c:set/>
	
	uri ="http://java.sun.com/jsp/jstl/core"
	>>�ھ� ���̺귯���� ����ϰڴٴ� �ǹ�.
		������ �ּ��̸� �ݵ�� �������
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL core ���̺귯��</title>
</head>
<body>
<%-- <c:set> ������ ���� �����ϴ� �±�
	var: ���� ������ ���� �̸�
	value: ������ �� --%>
 <c:set var="test" value="Hello JSTL!"/>
 
 <h3>
 	&lt;c:set&gt; ��� �� :
 	<c:out value='${test}'/><!-- ������ ���� ����ϴ� �±� -->
 <c:remove var="test"/><!-- ������ �Ӽ��� �����ϴ� �±� -->
 </h3>
 <h3>
 	&lt;c:set&gt; ��� �� :
 	<c:out value="${test}"/>
 </h3>
 
 <c:catch var="err"><!-- ���� ó���� ���� �±� 
 						���� �߻��� var�� ������ ���� ��ü�� �Ҵ�ȴ�. -->
 	<%=10/0 %>
 </c:catch>
 
 <h3>
 	&lt;c:catch&gt;�� ��Ƴ� ���� :
 	<c:out value="${err }"/>
 </h3>
 
 <c:if test="true">
 	���ǽ��� ���̾ ������ �����Ѵ�.<br>
 </c:if>
 <c:if test="${5<10}">
 	<h3>5�� 10���� �۴�</h3><br>
 </c:if>
 <c:if test="${6+3==8}">
 	<h3>6���ϱ� 3�� 9��</h3><br>
 </c:if>
	
	<%-- 
		1.<c:choose>, <c:when>, <c:otherwise>
		 �������� �������� ��� ���
		 ���� �� �����ϴ� ���� ������ �����ϰ� �����.
		 (�� �Ѱ��� ����- if~else if~else ���� ����)
		 �ϳ��� choose �±׿��� �������� when �±װ� ����
		 
		 2.����
		 <c:choose>
			body content(<when> and <otherwise> subtags)
			���� ���� �� ���� - ������ �ۼ� ����
		<c:when test="testCondition">
			body content
		</c:when>
		<c:otherwise> ������ �������� �ʴ� ��� ����
			conditional block
		</c:otherwise>
	</c:choose>
	--%>
	<c:choose>
		<c:when test="${5+10==50 }">
			<h3>5+10�� 50�̴�.</h3>
		</c:when>
		
		<c:otherwise>
			<h3>5+10�� 50�� �ƴϴ�.</h3>
		</c:otherwise>
	</c:choose>
	
	
	<%--
		1.���� a�� 3����
		2.a���� 1�̸� 1�Դϴ�. 2�̸� 2�Դϴ�. 1�Ǵ� 2�� �ƴϸ� 1�Ǵ� 2�� �ƴմϴ� ���
		3.a���� 1 ������Ŵ
		4.a���� ���
	 --%>
	
	<c:set var="a" value="3"/>
	<c:choose>
		<c:when test="${a==1 }">
			<h3>1�Դϴ�.</h3>
		</c:when>
		<c:when test="${a==2 }">
			<h3>2�Դϴ�.</h3>
		</c:when>
		<c:otherwise>
			<h3>1�Ǵ� 2�� �ƴմϴ�.</h3>
		</c:otherwise> 
	</c:choose>
	
 
	<c:set var="a" value='${a+1}'/>
	
	<h3>
		<c:out value="${a }"/>
	</h3>
	
	
	
	
	
	
	
	
</body>
</html>