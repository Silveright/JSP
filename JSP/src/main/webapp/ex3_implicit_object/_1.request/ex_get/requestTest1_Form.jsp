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
			alert("������ �����ϼ���");
			return false;
		}

		var hobby = $('input[type=checkbox]:checked').length;
		if(hobby<1){
			alert("��̴� 1���̻� �����ϼ���");
			return false;
		}
		
	});
})
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h3>Request �����Դϴ�.</h3>
		<form action="requestTest2.jsp" method="get">
			<table class="table">
				<tr>
					<td>�̸�</td>
					<td><input type="text" name="name" class="form-control" required></td>
				</tr>
				<tr>
					<td>����</td>
					<td><label>
							<input type="radio" name="gender" value="male"> ����
						</label>
						<label>
							<input type="radio" name="gender" value="female"> ����
						</label>
					</td>
				</tr>
				<tr>
					<td>���</td>
					<td><label>
							<input type="checkbox" value="����" name="hobby"> ����
						</label>
						<label>
							<input type="checkbox" value="����" name="hobby"> ����
						</label>
						<label>
							<input type="checkbox" value="TV��û" name="hobby"> TV��û
						</label>
						<label>
							<input type="checkbox" value="�౸" name="hobby"> �౸
						</label>
						<label>
							<input type="checkbox" value="��Ÿ" name="hobby"> ��Ÿ
						</label>
					</td>
				</tr>
				<tr>
					<td colspan="2"><button type="submit" class="btn btn-success">����</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>