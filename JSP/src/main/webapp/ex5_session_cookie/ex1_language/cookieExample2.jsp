<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%		
	//��Ű ��ü�� �����ϰ� language1�̶�� ��Ű �̸���
	//�Է¹��� language ���� ���� �����Ѵ�.
	Cookie cookie= new Cookie("language1", request.getParameter("language"));
	
	//�ð��� �������� ������ setMaxAge()�޼��� ������� �ʴ°��
	//������ ����� ��Ű�� �����ȴ�.
	//�Ǵ� �޼��带 ȣ���� �� ���ڰ����� 0���ָ� ��Ű�� �����ȴ�.
	cookie.setMaxAge(60*60*24);//��Ű�� ��ȿ�ð��� 24�ð����� ����(����:��)
	response.addCookie(cookie);//Ŭ���̾�Ʈ�� ��Ű�� ����
%>
<script>
	location.href="cookieExample.jsp"//cookieExample.jsp�� ���ư���.
</script>

