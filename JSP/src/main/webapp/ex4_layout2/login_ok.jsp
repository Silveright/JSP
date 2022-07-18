<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		 <%
	 		String id = application.getInitParameter("id");
	 		String pw = application.getInitParameter("password");
	 		String input_id=(String)session.getAttribute("id");
	 		String input_pw=(String)session.getAttribute("passwd");
	 	if(input_id.equals(id) && input_pw.equals(pw)) {
	 		session.setAttribute("id", id);
	 	}
	 %>
	
	
	if(input_id.equals(id) && passwd.equals("java")) {
			//세션 생성
			HttpSession session = request.getSession();
			//세션 객체 id 속성으로 id 값 저장 
			session.setAttribute("id", id);
			response.sendRedirect("loginSuccess.jsp");
		} else if(id.equals("java")){
			out.println("<script>");
			out.println("alert('비밀번호가 일치하지 않습니다.')");
			out.println("history.back()");//바로 전 페이지로 이동
			out.println("</script>");
			out.close();
		} else{
			out.println("<script>");
			out.println("alert('아이디가 일치하지 않습니다.')");
			out.println("history.back()");
			out.println("</script>");
			out.close();
		}
		<script>
		location.href="template.jsp";
		</script>
</body>
</html>