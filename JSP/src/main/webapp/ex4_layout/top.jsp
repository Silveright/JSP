<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 
<style>
.login {
   padding:1%; text-align:right; background-color:green; color:white}
.log{text-decoration:none; color:white; font-weight:bold}
.login:hover{opacity:0.8}
input:hover{opacity: 0.9}
h1{text-align:center;margin:30Px}
</style>
<div>
	<h1>상품 목록</h1>
</div>
<div class=login>
	<%
			request.setCharacterEncoding("euc-kr");
			String id = application.getInitParameter("id");
	 		String pw = application.getInitParameter("password");
	 		
	 		String input_id=request.getParameter("id");
	 		String input_pw=request.getParameter("passwd");
	 		if(id.equals(input_id) && pw.equals(input_pw)) {
	 			 
	 			 %>
	 			<%=input_id%>님이 로그인 되었습니다.
	 			<a href='logout.jsp' class="log">(로그아웃)</a>
	 		<%
	 		}else if(!id.equals(input_id) && pw.equals(input_pw)){
	 		out.print("<script>alert('아이디가 다릅니다.');history.back();</script>");
	 		}else if(id.equals(input_id) && !pw.equals(input_pw)){
	 		out.print("<script>alert('비밀번호가 다릅니다.');history.back();</script>");	
	 		}else{
	 		%>
	 		<a href='login.jsp' class="log">로그인</a>
	 		<%
	 		} 
	 		%>
</div>
<%-- <script>
	window.onload = function(){
			var id = "<% application.getInitParameter("id");%>"
			var pw = "<%application.getInitParameter("password");%>"
	 		
			 var input_id= "<%request.getParameter("id");%>"
			var input_pw= "<%request.getParameter("passwd");%>"
	console.log(id)
if(id!=(input_id) && pw==(input_pw)){
	alert("아이디가 다릅니다.");
	history.back();
} else if(id==(input_id) && pw!=(input_pw)){
	alert("비밀번호가 다릅니다.");
	history.back();}
		
	}
</script> --%>


