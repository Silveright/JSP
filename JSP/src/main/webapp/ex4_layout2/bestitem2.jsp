<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%--https://www.w3schools.com/bootstrap4/tryit.asp?filename=trybs_filters_table&stacked=h --%>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container mt-3">
	<h2>인기 목록 Table</h2>
	<p>상품입력하세요.</p>
	<input class="form-control" id="myInput" type="search"
		placeholder="Search.."> <br>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>상품이름</th>
				<th>가격</th>
				<th>제조사</th>
			</tr>
		</thead>
		<tbody id="myTable">
			<tr>
				<td>참치</td>
				<td>1000</td>
				<td>동원</td>
			</tr>
			<tr>
				<td>비타민</td>
				<td>100</td>
				<td>건강한 나라</td>
			</tr>
			<tr>
				<td>오징어</td>
				<td>700</td>
				<td>바다</td>
			</tr>
			<tr>
				<td>에어컨</td>
				<td>300</td>
				<td>시원한나라</td>
			</tr>
		</tbody>
	</table>
</div>
<script>
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase(); //입력한 값을 소문자로 만듭니다.
    $("#myTable tr").each(function() {
    	console.log($(this).text()); //각 행의 모든 값을 가져옵니다.
    	console.log($(this).text().toLowerCase().indexOf(value) > -1) //각 행별로 입력한 문자열이 있는지 확인합니다.
    	
      //toogle(true) : 해당 객체가 보여집니다.
      //toogle(false) : 해당 객체가 보이지 않습니다.
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
</script>


</body>
</html>
