<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<meta charset="EUC-KR">
<style>
  .container{width:70%; margin-top:30px; vertical-align: middle}
  h3{text-align:center}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function(){
	$('form').submit(function(){
		var gender = $('input[type=radio]:checked').length;
		if(gender<1){
			alert("성별을 선택하세요");
			return false;
		}

		var hobby = $('input[type=checkbox]:checked').length;
		if(hobby<1){
			alert("취미는 1개이상 선택하세요");
			return false;
		}
		
	});
})
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h3>Request 예제입니다.</h3>
		<form action="requestTest2.jsp" method="get">
			<table class="table">
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" class="form-control" required></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><label>
							<input type="radio" name="gender" value="male"> 남자
						</label>
						<label>
							<input type="radio" name="gender" value="female"> 여자
						</label>
					</td>
				</tr>
				<tr>
					<td>취미</td>
					<td><label>
							<input type="checkbox" value="독서" name="hobby"> 독서
						</label>
						<label>
							<input type="checkbox" value="게임" name="hobby"> 게임
						</label>
						<label>
							<input type="checkbox" value="TV시청" name="hobby"> TV시청
						</label>
						<label>
							<input type="checkbox" value="축구" name="hobby"> 축구
						</label>
						<label>
							<input type="checkbox" value="기타" name="hobby"> 기타
						</label>
					</td>
				</tr>
				<tr>
					<td colspan="2"><button type="submit" class="btn btn-success">전송</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>