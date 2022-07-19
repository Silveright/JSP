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
<title>���� ������ �� �ۼ�</title>
</head>
<body>
	<div class="container mt-5">
	<form class="form-horizontal" method="post" action="mailSend.jsp">
		<fieldset>
			<legend>
				<strong>�����ۼ�</strong>
			</legend>
			
			<div class="form-group">
			<label class="control-label" for="sender">������ �ּ� <font color="red">*</font></label>
				<input class="form-control" type="text" name="sender" id="sender"
				value="<%=ex7_java_mail.Myinfo.naverid%>@naver.com" required>
			</div>
				
				
			<div class="form-group">
			<label class="control-label" for="receiver">�޴� �ּ� <font color="red">*</font></label>
				<input class="form-control" type="email" name="receiver" id="receiver"
				 required>
			</div>

			<div class="form-group">
			<label class="control-label" for="subject">���� ���� <font color="red">*</font></label>
				<input class="form-control" type="text" name="subject" id="subject"
				 required>
			</div>

			<div class="form-group">
			<label class="control-label" for="content">���� ���� <font color="red">*</font></label>
				<textarea class="form-control" name="content" id="content" rows="5"
				 required></textarea>
			</div>
			
			<div class='form-actions text-left'>
				<input type="submit" class="btn btn-primary" value="���Ϻ�����">
				<input type="reset" class="btn btn-danger" value="�ٽ��ۼ�">
			</div>
		</fieldset>	
	</form>
	</div>
</body>
</html>