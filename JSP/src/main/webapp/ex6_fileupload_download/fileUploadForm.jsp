<!-- webapp 폴더 아래 "upload"폴더 생성 후 실행할 것
	
	일반 파라미터를 전송할 때 사용하는 인코딩과 파일을 업로드 할 때 사용하는 인코딩은 다르다.
	스트림 기반의 전송 방식인 POST 방식은 다음의 두 가지 인코딩 방식에 따라 전송하는 데이터 형식이 달라진다.
	
	1. application/x-www-form-urlencoded
	2. multipart/for-data
	
	지금까지의 예제들은 1번 인코딩을 사용해 데이터를 전송했다.
	파일을 업로드 하기 위해서는 2번 인코딩을 사용한다.
	form 태그의 entype 속성 값을 "multipart/form-data"로 지정하면된다.
	method는 post방식
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
		<!-- enctype 속성 설정  -->
		<form action="fileUpload2.jsp" method="post" enctype="multipart/form-data">
			<p class="h4 mb-4 text-center">파일 업로드 폼</p>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text mb-1">작성자</span>
				</div>
				<input type="text" class="form-control" name="name">
			</div>
			
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">제 목</span>
				</div>
				<input type="text" class="form-control" name="subject">
			</div>
			
			<div class="form-group">
				<input type="file" class="form-control-file border" name="fileName1">
			<!-- 파일을 선택하여 전송할 수 있도록 type 속성을 file로 설정 -->
			</div>

			<div class="form-group">
				<input type="file" class="form-control-file border" name="fileName2">
			</div>
			
			<button type="submit" class="btn btn-info my-4 btn-block">Submit</button>
			
			
		</form>
	</div>

</body>
</html>