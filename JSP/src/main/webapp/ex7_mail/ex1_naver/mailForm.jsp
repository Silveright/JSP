<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
.container{width:50%}
label{font-weight:bold}
fieldset{border:1px solid #dde1e5; padding:50px;}
legend{text-align:center; width:auto; padding:10px}
</style>
<title>메일 보내기 폼 작성</title>
</head>
<body>
	<div class="container mt-5">
	<form class="form-horizontal" method="post" action="mailSend.jsp">
		<fieldset>
			<legend>
				<strong>메일작성</strong>
			</legend>
			
			<div class="form-group">
			<label class="control-label" for="sender">보내는 주소 <font color="red">*</font></label>
				<input class="form-control" type="text" name="sender" id="sender"
				value="<%=ex7_java_mail.Myinfo.naverid%>@naver.com" required>
			</div>
				
				
			<div class="form-group">
			<label class="control-label" for="receiver">받는 주소 <font color="red">*</font></label>
				<input class="form-control" type="email" name="receiver" id="receiver"
				 required>
			</div>

			<div class="form-group">
			<label class="control-label" for="subject">메일 제목 <font color="red">*</font></label>
				<input class="form-control" type="text" name="subject" id="subject"
				 required>
			</div>

			<div class="form-group">
			<label class="control-label" for="content">메일 내용 <font color="red">*</font></label>
				<textarea class="form-control" name="content" id="content" rows="5"
				 required></textarea>
			</div>
			
			<div class='form-actions text-left'>
				<input type="submit" class="btn btn-primary" value="메일보내기">
				<input type="reset" class="btn btn-danger" value="다시작성">
			</div>
		</fieldset>	
	</form>
	</div>
</body>
</html>