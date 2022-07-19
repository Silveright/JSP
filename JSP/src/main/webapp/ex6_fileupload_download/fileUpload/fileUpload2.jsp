<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page trimDirectiveWhitespaces="true"%>
<!-- 업로드 하기 위해 MultipartRequest 객체 import -->    
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<!-- 파일 이름 중복처리 하기 위해 DefaultFileRenamePolicy 객체 import -->    
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<% String uploadPath = application.getRealPath("upload");
	out.print("upload 경로 : " + uploadPath);
	
	
	int size= 10*1024*1024;//파일 최대 크기 10MB
	String name=""; String subject=""; String systemName1="";
	String systemName2=""; String origfileName1=""; String origfileName2="";

	try{
		/* 업로드를 담당하는 부분이다.
		request:폼에서 가져온 값을 얻기 위해 request 객체를 전달해준다.
		uploadPath:업로드 될 파일의 위치
		size:업로드 할 크기이며 지정 크기보다 클 경우 Exception발생
		euc-kr:파일 이름이 한글인 경우 처리하는 부분
		다섯 번째 인자 : 똑같은 파일 업로드 시 중복되지 않도록 자동으로 파일이름을 변환해주는 기능
		*/
		MultipartRequest multi = new MultipartRequest(request, 
									uploadPath,
									size,
									"euc-kr",
							new DefaultFileRenamePolicy());
		name = multi.getParameter("name");
		subject=multi.getParameter("subject");
		
		//name=fileName1의 input에서 올린 파일의 시스템상의 파일명을 얻어온다.
		//중복된 파일명의 경우 파일명 맨 뒤에 숫자를 붙여 처리한다.
		systemName1=multi.getFilesystemName("fileName1");
		//name=fileName1의 input에서 업로드한 원본 파일명을 얻어온다.
		origfileName1 =multi.getOriginalFileName("fileName1");
		systemName2=multi.getFilesystemName("fileName2");
		//name=fileName1의 input에서 업로드한 원본 파일명을 얻어온다.
		origfileName2 =multi.getOriginalFileName("fileName2");
	}catch(Exception e){
			e.printStackTrace();
			out.print("에러입니다.");
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
<form name= "filecheck" action="fileCheck2.jsp" method="post">
	<input type="hidden" name= "name" value="<%=name%>">
	<input type="hidden" name= "subject" value="<%=subject%>">
	
	<input type="hidden" name= "systemName1" value="<%=systemName1%>">
	<input type="hidden" name= "systemName2" value="<%=systemName2%>">
	
	<input type="hidden" name= "origfileName1" value="<%=origfileName1%>">
	<input type="hidden" name= "origfileName2" value="<%=origfileName2%>">
	<input type="hidden" name= "uploadPath" value="<%=uploadPath%>">
	<input type="submit" value="업로드 확인 및 다운로드 페이지 이동">
</form>
</body>
</html>