	<%-- 3. ǥ����(Expression)
	(1)���� �Ǵ� ��ũ��Ʈ�� �±׿��� ����� ������ �޼����� ���ϰ��� ����ϱ� ���� ���Ǵ� ���
	(2)�� �����̳ʿ� ���� _jspService()�޼��� ���ο� ��°�ü�� print()�޼��� ��ȣ�ȿ�
	   ��°�� ���Ƿ� scriptlet���� �޸� �����ݷ��� ����ؼ��� �ȵȴ�.
	(3)����
		<%=���� %>
		<%=���ϰ��� �ִ� �޼��� %>
		<%=���� %> 
	--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%!//1���� 100������ ���� ���ϴ� sum()�޼��� ����
    public int sum(){
     int total=0;
     for(int i=1; i<=100; i++){
    	 total +=i;
     }
	return total;
	}
%>
<style>
span{color:red}
</style>
<%//������ �Ҵ��Ѵ�.
    String str="1���� 100������ ��";
%>

<h1><%= str %>�� <span> <%= sum() %></span>�Դϴ�.</h1> 
<h1><%= str %>�� 3�� ���ϸ�<span> <%= sum()*3 %></span></h1>
<h1><%= str %>�� 1000���� ������ <%= sum()/1000.0 %></h1>