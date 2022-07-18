<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- ���ε� �ϱ� ���� MultipartRequest ��ü import -->    
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<!-- ���� �̸� �ߺ�ó�� �ϱ� ���� DefaultFileRenamePolicy ��ü import -->    
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<% String uploadPath = application.getRealPath("upload");
	out.print("upload ��� : " + uploadPath);
	
	
	int size= 10*1024*1024;//���� �ִ� ũ�� 10MB
	String name=""; String subject=""; String systemName1="";
	String systemName2=""; String origfileName1=""; String origfileName2="";

	try{
		/* ���ε带 ����ϴ� �κ��̴�.
		request:������ ������ ���� ��� ���� request ��ü�� �������ش�.
		uploadPath:���ε� �� ������ ��ġ
		size:���ε� �� ũ���̸� ���� ũ�⺸�� Ŭ ��� Exception�߻�
		euc-kr:���� �̸��� �ѱ��� ��� ó���ϴ� �κ�
		�ټ� ��° ���� : �Ȱ��� ���� ���ε� �� �ߺ����� �ʵ��� �ڵ����� �����̸��� ��ȯ���ִ� ���
		*/
		MultipartRequest multi = new MultipartRequest(request, 
									uploadPath,
									size,
									"euc-kr",
							new DefaultFileRenamePolicy());
		name = multi.getParameter("name");
		subject=multi.getParameter("subject");
		
		//name=fileName1�� input���� �ø� ������ �ý��ۻ��� ���ϸ��� ���´�.
		//�ߺ��� ���ϸ��� ��� ���ϸ� �� �ڿ� ���ڸ� �ٿ� ó���Ѵ�.
		systemName1=multi.getFilesystemName("fileName1");
		//name=fileName1�� input���� ���ε��� ���� ���ϸ��� ���´�.
		origfileName1 =multi.getOriginalFileName("fileName1");
		systemName1=multi.getFilesystemName("fileName2");
		//name=fileName1�� input���� ���ε��� ���� ���ϸ��� ���´�.
		origfileName2 =multi.getOriginalFileName("fileName2");
	}catch(Exception e){
			e.printStackTrace();
			out.print("�����Դϴ�.");
	}

		session.setAttribute("name",name);
		session.setAttribute("subject",subject);
		session.setAttribute("fileName1",origfileName1);
		session.setAttribute("fileName2",origfileName2);
			 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="fileCheck2.jsp" method="post">
<button type="submit">���ε� Ȯ�� �� �ٿ�ε� ������ �̵�</button>
</form>
</body>
</html>