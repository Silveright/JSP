<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
.container{margin:3em auto; border:1px solid lightgray; width:500px}
</style>
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
	<div class="container">
	<form action="login_ok.jsp" method="post" class="border-light p-5">
		<p class="h4 mb-4 text-center">login</p>
	<div class="form-group">
		<label for="id">id</label> 
		<input type="text" class="form-control" name="id" id="id" placeholder="Enter id">
	</div>
	<div class="form-group">
		<label for="pass">Password</label> 
		<input type="password" class="form-control" name="passwd" id="pass" placeholder="Enter password">
	</div>
	
	<div class="form-group custom-control custom-checkbox">
		<input type="checkbox" class="custom-control-input" id="remember" name="remember" value="store">
		<label class="custom-control-label" for="remember">아이디 기억하기</label>
	</div>
		<button type="submit" class="btn btn-info my-4 btn-block">Submit</button>
	</form>
	</div>
	
	
</body>
</html>