<!-- webapp ���� �Ʒ� "upload"���� ���� �� ������ ��
	
	�Ϲ� �Ķ���͸� ������ �� ����ϴ� ���ڵ��� ������ ���ε� �� �� ����ϴ� ���ڵ��� �ٸ���.
	��Ʈ�� ����� ���� ����� POST ����� ������ �� ���� ���ڵ� ��Ŀ� ���� �����ϴ� ������ ������ �޶�����.
	
	1. application/x-www-form-urlencoded
	2. multipart/for-data
	
	���ݱ����� �������� 1�� ���ڵ��� ����� �����͸� �����ߴ�.
	������ ���ε� �ϱ� ���ؼ��� 2�� ���ڵ��� ����Ѵ�.
	form �±��� entype �Ӽ� ���� "multipart/form-data"�� �����ϸ�ȴ�.
	method�� post���
 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" 
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>FileUpload Form</title>
<style>
	.container{width:500px;margin-top:3em}
	.input-group-text{width:74px;}
</style>
</head>
<body>
	<div class="container">
		<!-- enctype �Ӽ� ����  -->
		<form action="fileUpload2.jsp" method="post" enctype="multipart/form-data">
			<p class="h4 mb-4 text-center">���� ���ε� ��</p>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text mb-1">�ۼ���</span>
				</div>
				<input type="text" class="form-control" name="name">
			</div>
			
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">�� ��</span>
				</div>
				<input type="text" class="form-control" name="subject">
			</div>
			
			<div class="form-group">
				<input type="file" class="form-control-file border" name="fileName1">
			<!-- ������ �����Ͽ� ������ �� �ֵ��� type �Ӽ��� file�� ���� -->
			</div>

			<div class="form-group">
				<input type="file" class="form-control-file border" name="fileName2">
			</div>
			
			<button type="submit" class="btn btn-info my-4 btn-block">Submit</button>
			
			
		</form>
	</div>

</body>
</html>