<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>��Ű �̿� ���̵� ����</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="<%=request.getContextPath()%>/js/jquery-3.6.0.js"></script>
<style>
.container{margin:3em auto; border:1px solid lightgray; width:500px}
</style>
<script>
	$(document).ready(function(){
		
			var result ='<%=session.getAttribute("login_result")%>';
			
			//result�� -1 : ���̵�� ��ġ, ��й�ȣ ����ġ
			//result�� 0: ���̵� �������� ����
			if(result !='null'){
				if(result ==='-1'){
					alert('��й�ȣ�� ��ġ���� �ʽ��ϴ�.')
				}else if(result==='0'){
					alert('���̵� �������� �ʽ��ϴ�.')
				}
				<%session.removeAttribute("login_result");%>
			}
			//Login.java���� ã���� �ϴ� ��Ű�� ���� ��� String id ="";����Ǿ� 28���� ���� id�� ���� �� ���ڿ�
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
		<label class="custom-control-label" for="remember">���̵� ����ϱ�</label>
	</div>
		<button type="submit" class="btn btn-info my-4 btn-block">Submit</button>
	</form>
	</div>
	
	
</body>
</html>