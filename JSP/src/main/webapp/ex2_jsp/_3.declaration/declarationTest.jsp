
<%-- *JSP ��ũ��Ʈ��� - JSP ���������� �ڹ��ڵ带 ����� �� �ִ� ������ �ǹ��Ѵ�.
��ũ��Ʈ ����� ���� - ����(<! %>), ��ũ��Ʈ��(<% %>), ǥ����(<%= %>)

	1.����(Declarations)
		(1) JSP���������� �ڹ� �ڵ��� �������(�ʵ�)�� �޼��带 �����ϱ� ���� ���ȴ�.
		(2) ������ ����� ����� ������ JSP ������ �� �����̳ʿ� ���� ������ �� ��
			��������� �νĵǱ� ������ JSP�������� ��� ��ġ������ �ش� ������ �����ϴ� ���� �����ϴ�.
			C:\Users\Home\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core
			\tmp0\work\Catalina\localhost\JSP\org\apache\jsp\ex2_005fjsp\_005f3_declaration
			������ declarationTest_jsp.java�� declarationTest_jsp.class������ �ִ�.

--%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<h1><%=getStr() %></h1>
<%!
 private String getStr(){
	str +=" �׽�Ʈ�Դϴ�.";
	return str;
}
 private String str="���� ";
 %>