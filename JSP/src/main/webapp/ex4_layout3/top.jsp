<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style>
.bg-dark{ 
	background-color: #28a745!important;
	}
.navbar-dark .navbar-nav .nav-link{
 color: rgb(255,255,255);
 }

</style>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="#">액션태그</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
    </button>
    <!-- flex-row-reverse 추가 오른쪽으로 붙는다. -->
    <div class="collapse navbar-collapse flex-row-reverse" id="collapsibleNavbar">
    <ul class="navbar-nav">
    	<%
    		String id = (String) session.getAttribute("id");
    		if(id!=null && !id.equals("")) {
    	%>
      <li class="nav-item"><a class="nav-link"><%=id %>님이 로그인 되었습니다.</a></li>
      <li class="nav-item"><a class="nav-link" href="logout.jsp">로그아웃</a></li>
    	<% } else{%> 
    	<li class="nav-item"><a class="nav-link" href="login.jsp">로그인</a></li>
    	<li class="nav-item"><a class="nav-link" href="join.jsp">회원가입</a></li>
    	<% }%>
    </ul>
  </div>  
</nav>
<%-- <div>
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
<script>
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


