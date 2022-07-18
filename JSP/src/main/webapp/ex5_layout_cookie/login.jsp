<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<link href="../css/ch03-1.css" type="text/css" rel="stylesheet">
</head>
<script src="<%=request.getContextPath()%>/js/jquery-3.6.0.js"></script>
<%		
		
		String id="";
		Cookie cookies[] = request.getCookies();
		//쿠키가 존재하는지 확인
		if(cookies != null){
			for(int i=0; i<cookies.length;i++){
				if(cookies[i].getName().equals("id")){
					id=cookies[i].getValue();//쿠키 값을 가져온다.
				}
			}
		}
%>
<head>
<title>쿠키 이용 아이디 저장</title>
<script>
	$(document).ready(function(){
			var id_val = '<%=id%>';
			if(id_val){//값이 있으면
				$('#id').val(id_val).css('font-weight', 'bold');
				$('#remember').prop('checked',true);
			}

		 	$('form').submit(function(){
				var inputid=$.trim($('#id').val());
				if(!inputid){
					alert("아이디를 입력하세요");
					$("#id").focus();
					return false;
				}
				
				var inputpass=$.trim($("#pass").val());
				if(!inputpass){
					alert("비밀번호를 입력하세요");
					$("#pass").focus();
					return false;
				}
			
	})
	})
	/* $(function(){
		$("#id").val() != ""
			
	}) */
</script>
<body>
	<form action="login_ok.jsp" method="post" class="border-light p-5">
		<h1>로그인 </h1>
		<hr>
	<b>아이디</b> 
	<input type="text" name="id" id="id"  required>
	<b>비밀번호</b> 
	<input type="password" name="passwd" id='pass' required><br>
	<div class="clearfix">
		<button type="submit" class="submitbtn">전송 </button>
		<button type="reset" class="cancelbtn">취소 </button>
	</div>
	
	<div>
		<input type="checkbox" id="remember" name="remember" value="store">
		<label for="remember">아이디 기억하기</label>
	</div>
	
	</form>
	
	
</body>
</html>