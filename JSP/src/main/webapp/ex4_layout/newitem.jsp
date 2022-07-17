<%@ page language="java" 
         contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%--https://www.w3schools.com/bootstrap4/tryit.asp?filename=trybs_filters_table&stacked=h --%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<div class="container mt-3">
  <h2>신상품 목록  Table</h2>
  <p>상품입력하세요.</p>  
  <input class="form-control" id="myInput" type="search" placeholder="Search..">
  <br>
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
        <td>갤럭시 s21 울트라</td>
        <td>1000</td>
        <td>삼성</td>
      </tr>
      <tr>
        <td>LG그램 울트라 PC</td>
        <td>100</td>
        <td>LG 전자</td>
      </tr>
      <tr>
        <td>롤러블 폰</td>
        <td>700</td>
        <td>삼성</td>
      </tr>
    </tbody>
  </table>
  </div>
<script>
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").each(function() {
    	
    	console.log($(this).text());
    	console.log($(this).text().toLowerCase().indexOf(value) > -1)
    	
      //toogle(true) : 해당 객체가 보여집니다.
      //toogle(false) : 해당 객체가 보이지 않습니다.
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
</script>


