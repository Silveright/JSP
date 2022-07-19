<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- ������ ����� smtp �����ּҸ� ������ ���̹��� "���̵�@naver.com"���� �Ѵ�. -->
<%@ page import="ex7_java_mail.Myinfo" %>
<%@page import="java.util.Properties" %><!-- key, value������ �������  -->

<!-- �ڹ� ���� api�� ����ϱ� ���� ���� ��Ű�� import -->
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>


<%
	request.setCharacterEncoding("euc-kr");//post���
	String sender = request.getParameter("sender");//������ ����� �ݵ�� smtp ������ ����ϴ� �̸��� �ּҷ� �������Ѵ�.
	String receiver = request.getParameter("receiver");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	
	/* 
		JavaMail�� ����Ͽ� �̸����� �����ϱ� ���� 3���� ������ ������ ����.
		1.ȣ��Ʈ �̸�, ����ڸ�,��й�ȣ ��� ���� ȣ��Ʈ�� ��� ������ �����ϴ� Session ��ü�� ��´�
		2.�޼����� �����Ѵ�.
		3.�޼����� ������.
	*/
	
	//SMTP ���� �ּҸ� ������
	String server="smtp.naver.com";
	int port=587;
	
	try{
		//���� ������ Properties ��ü�� �����Ѵ�.
		Properties properties = new Properties();
		
		//SMTP ���� ���� ����
		//���̹��� ��� smtp.naver.com
		properties.put("mail.smtp.host", server);
		properties.put("mail.smtp.port", port);
		
		//SSL(Secure Sockets Layer)�� ���� TLS(���� ���� ����-Transport Layer Security)��
		//��Ʈ��ũ�� ���� ���۵� �� �������� ������ �����ϱ� ���� ��ȣȭ ���������̴�.
		//���� ���ۿ� ���Ǵ� ���������� TLSv1.2�� �����Ѵ�.
		properties.put("mail.smtp.ssl.protocols","TLSv1.2");
		
		//������ Properties��ü�� ������ ������ �ν��Ͻ��� �����Ѵ�.
		//public static Session getInstance(Properties props)
		//Session Ŭ������ ������� �̸�, ��ȣ, ���� ������ ���� 
		//���� ������ �̿��ϴµ� �ʿ��� �̸��� ���� ������ �����Ѵ�.
		Session s = Session.getInstance(properties);
		
		//������ ���ϰ� �޴� �ּҸ� �����Ѵ�.
		Address sender_address = new InternetAddress(sender);
		Address receiver_address= new InternetAddress(receiver);
		
		//������ ������ ���� ������ �Է��ϱ� ���� Message��ü ����
		Message message = new MimeMessage(s);
		
		//������ ���� ������ �ѱ��� ��� ������ �ʵ��� content-type�� �����Ѵ�.	
		message.setHeader("content-type", "text/html;charset=euc-kr");
		
		//������ ���� �ּ� ������ �����Ѵ�.
		message.setFrom(sender_address);
		
		//�޴� ���� �ּ� ������ �����Ѵ�.
		//Message.RecipientType�� Message Ŭ�������� ����ϴ� ������ ������ �����Ѵ�.
		//Message.RecipientType.TO: �޴� ����� �ǹ��Ѵ�.
		message.addRecipient(Message.RecipientType.TO, receiver_address);
		
		//���� ������ ����
		message.setSubject(subject);
		
		//������ ������ ����
		message.setContent(content,"text/html;charset=euc-kr");
		
		//������ ��¥�� ����
		message.setSentDate(new java.util.Date());
		
		//public Transport getTransport(String protocol)
		//throws NoSuchProviderException
		//������ ��������(smtp)�� �����ϴ� Transport ��ü�� �����´�.
		//������ �����ϴ� Ŭ����
		Transport transport = s.getTransport("smtp");
		
		//ù��° ���ڴ� ������ ȣ��Ʈ�̸� �ι�° ���ڴ� ���̵�, ����° ���ڴ� ��й�ȣ�� �ǹ�
		//���̵�, ��й�ȣ ��� ����ؾ� ������ �ȴ�.
		transport.connect(server, Myinfo.naverid, Myinfo.naverpass);
		
		//getAllRecipients(): �޽����� ��� ������ �ּҸ� �����´�.
		//������ �ּ� ������� �޼��� ����
		transport.sendMessage(message, message.getAllRecipients());
		//���� ����
		transport.close();
		
		out.println("<h3>������ ���������� ���۵Ǿ����ϴ�.</h3>");
	} catch(Exception e){
		out.println("SMTP������ �߸� �����Ǿ��ų�, ���񽺿� ������ �ֽ��ϴ�.");
		e.printStackTrace();
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>