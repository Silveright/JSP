<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
		
		 <%
			String id = application.getInitParameter("id");
	 		String pw = application.getInitParameter("password");
	 		
	 		String input_id=request.getParameter("id");
	 		String input_pw=request.getParameter("passwd");
	 		if(id.equals(input_id) && pw.equals(input_pw)) {
	 			session.setAttribute("id",id);
	 			 %>
	 			 <script>alert("<%=id%>님 환영합니다.")
	 			location.href='templatetest.jsp';
	 			 </script>
	 		<%
	 		
	 			String check_value = request.getParameter("remember");
	 			Cookie cookie = new Cookie("id", request.getParameter("id"));
	 			//ID 기억하기를 체크한 경우
	 			if(check_value!=null && check_value.equals("store")){
	 				cookie.setMaxAge(2*60);
	 				response.addCookie(cookie);
	 				System.out.println(check_value);
	 			} else {
	 				cookie.setMaxAge(0);
	 				response.addCookie(cookie);
	 				System.out.println(check_value);
	 			}
	 		
	 		}else if(id.equals(input_id)){%>
	 		<script>
	 		alert('비밀번호를 확인하세요.');
	 		history.back();
	 		</script>
	 		<%
	 		}else{%>
	 		<script>
	 		alert('아이디를 확인하세요.');
	 		history.back();
	 		</script>	
	 		<%
	 		}
	 		%>
</body>
</html>