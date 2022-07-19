<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 보내는 사람은 smtp 서버주소를 설정한 네이버의 "아이디@naver.com"으로 한다. -->
<%@ page import="ex7_java_mail.Myinfo" %>
<%@page import="java.util.Properties" %><!-- key, value쌍으로 집어넣음  -->

<!-- 자바 메일 api를 사용하기 위해 관련 패키지 import -->
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>


<%
	request.setCharacterEncoding("euc-kr");//post방식
	String sender = request.getParameter("sender");//보내는 사람은 반드시 smtp 서버를 사용하는 이메일 주소로 보내야한다.
	String receiver = request.getParameter("receiver");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	
	/* 
		JavaMail을 사용하여 이메일을 전송하기 위한 3가지 절차는 다음과 같다.
		1.호스트 이름, 사용자명,비밀번호 등과 같은 호스트의 모든 정보를 저장하는 Session 객체를 얻는다
		2.메세지를 구성한다.
		3.메세지를 보낸다.
	*/
	
	//SMTP 서버 주소를 지정함
	String server="smtp.naver.com";
	int port=587;
	
	try{
		//서버 정보를 Properties 객체에 저장한다.
		Properties properties = new Properties();
		
		//SMTP 서버 정보 설정
		//네이버일 경우 smtp.naver.com
		properties.put("mail.smtp.host", server);
		properties.put("mail.smtp.port", port);
		
		//SSL(Secure Sockets Layer)과 같은 TLS(전송 계층 보안-Transport Layer Security)는
		//네트워크를 통해 전송될 때 데이터의 보안을 유지하기 위한 암호화 프로토콜이다.
		//메일 전송에 사용되는 프로토콜을 TLSv1.2로 지정한다.
		properties.put("mail.smtp.ssl.protocols","TLSv1.2");
		
		//저장한 Properties객체의 값으로 세션의 인스턴스를 생성한다.
		//public static Session getInstance(Properties props)
		//Session 클래스는 사용자의 이름, 암호, 메일 서버와 같이 
		//메일 서버를 이용하는데 필요한 이메일 계정 정보를 관리한다.
		Session s = Session.getInstance(properties);
		
		//보내는 메일과 받는 주소를 설정한다.
		Address sender_address = new InternetAddress(sender);
		Address receiver_address= new InternetAddress(receiver);
		
		//메일을 보내기 위한 정보를 입력하기 위해 Message객체 생성
		Message message = new MimeMessage(s);
		
		//보내는 메일 내용이 한글일 경우 깨지지 않도록 content-type을 지정한다.	
		message.setHeader("content-type", "text/html;charset=euc-kr");
		
		//보내는 메일 주소 정보를 설정한다.
		message.setFrom(sender_address);
		
		//받는 메일 주소 정보를 설정한다.
		//Message.RecipientType은 Message 클래스에서 허용하는 수신자 유형을 정의한다.
		//Message.RecipientType.TO: 받는 사람을 의미한다.
		message.addRecipient(Message.RecipientType.TO, receiver_address);
		
		//제목 정보를 설정
		message.setSubject(subject);
		
		//내용의 정보를 설정
		message.setContent(content,"text/html;charset=euc-kr");
		
		//보내는 날짜를 설정
		message.setSentDate(new java.util.Date());
		
		//public Transport getTransport(String protocol)
		//throws NoSuchProviderException
		//지정된 프로토콜(smtp)을 구현하는 Transport 객체를 가져온다.
		//메일을 전송하는 클래스
		Transport transport = s.getTransport("smtp");
		
		//첫번째 인자는 연결할 호스트이며 두번째 인자는 아이디, 세번째 인자는 비밀번호를 의미
		//아이디, 비밀번호 모두 통과해야 연결이 된다.
		transport.connect(server, Myinfo.naverid, Myinfo.naverpass);
		
		//getAllRecipients(): 메시지의 모든 수신자 주소를 가져온다.
		//지정한 주소 목록으로 메세지 전송
		transport.sendMessage(message, message.getAllRecipients());
		//연결 종료
		transport.close();
		
		out.println("<h3>메일이 정상적으로 전송되었습니다.</h3>");
	} catch(Exception e){
		out.println("SMTP서버가 잘못 설정되었거나, 서비스에 문제가 있습니다.");
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