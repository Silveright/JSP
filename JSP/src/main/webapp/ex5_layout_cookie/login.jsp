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
		//��Ű�� �����ϴ��� Ȯ��
		if(cookies != null){
			for(int i=0; i<cookies.length;i++){
				if(cookies[i].getName().equals("id")){
					id=cookies[i].getValue();//��Ű ���� �����´�.
				}
			}
		}
%>
<head>
<title>��Ű �̿� ���̵� ����</title>
<script>
	$(document).ready(function(){
			var id_val = '<%=id%>';
			if(id_val){//���� ������
				$('#id').val(id_val).css('font-weight', 'bold');
				$('#remember').prop('checked',true);
			}

		 	$('form').submit(function(){
				var inputid=$.trim($('#id').val());
				if(!inputid){
					alert("���̵� �Է��ϼ���");
					$("#id").focus();
					return false;
				}
				
				var inputpass=$.trim($("#pass").val());
				if(!inputpass){
					alert("��й�ȣ�� �Է��ϼ���");
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
		<h1>�α��� </h1>
		<hr>
	<b>���̵�</b> 
	<input type="text" name="id" id="id"  required>
	<b>��й�ȣ</b> 
	<input type="password" name="passwd" id='pass' required><br>
	<div class="clearfix">
		<button type="submit" class="submitbtn">���� </button>
		<button type="reset" class="cancelbtn">��� </button>
	</div>
	
	<div>
		<input type="checkbox" id="remember" name="remember" value="store">
		<label for="remember">���̵� ����ϱ�</label>
	</div>
	
	</form>
	
	
</body>
</html>