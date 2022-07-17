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
	$("#myTable tr").each(function(index) {
		console.log(index);
		if (index % 2 == 0) {
			$(this).toggle(true);   //true이면 show()
		   // $(this).show();
		}else{
			$(this).toggle(false); //false이면 hide()
			//$(this).hide(); 
		}
	});
</script>

</body>
</html>
