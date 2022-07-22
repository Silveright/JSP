<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>쿠키 이용 아이디 저장</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="<%=request.getContextPath()%>/js/jquery-3.6.0.js"></script>
<style>
.container{margin:3em auto; border:1px solid lightgray; width:500px}
</style>
<script>
	$(document).ready(function(){
		
			var result ='<%=session.getAttribute("login_result")%>';
			
			//result가 -1 : 아이디는 일치, 비밀번호 불일치
			//result가 0: 아이디가 존재하지 않음
			if(result !='null'){
				if(result ==='-1'){
					alert('비밀번호가 일치하지 않습니다.')
				}else if(result==='0'){
					alert('아이디가 존재하지 않습니다.')
				}
				<%session.removeAttribute("login_result");%>
			}
			//Login.java에서 찾고자 하는 쿠키가 없는 경우 String id ="";적용되어 28라인 변수 id의 값은 빈 문자열
			var id = '<%=request.getAttribute("id")%>';
			if(id){
				$("#id").val(id);
				$("#remember").prop('checked',true);
			}
	})
</script>
<body>
	<div class="container">
	<form action="login_ok" method="post" class="border-light p-5">
		<p class="h4 mb-4 text-center">login</p>
	<div class="form-group">
		<label for="id">id</label> 
		<input type="text" class="form-control" name="id" id="id" placeholder="Enter id"
			required="required">
	</div>
	<div class="form-group">
		<label for="pass">Password</label> 
		<input type="password" class="form-control" name="passwd" id="pass" required="required" placeholder="Enter password">
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