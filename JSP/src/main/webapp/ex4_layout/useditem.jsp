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
  <h2>�߰� ��ǰ ���  Table</h2>
  <p>��ǰ�Է��ϼ���.</p>  
  <input class="form-control" id="myInput" type="search" placeholder="Search..">
  <br>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>��ǰ�̸�</th>
        <th>����</th>
        <th>������</th>
      </tr>
    </thead>
    <tbody id="myTable">
      <tr>
        <td>��ǻ��</td>
        <td>1000</td>
        <td>�Ｚ</td>
      </tr>
      <tr>
        <td>TV</td>
        <td>100</td>
        <td>LG</td>
      </tr>
      <tr>
        <td>�����е�</td>
        <td>700</td>
        <td>APPLE</td>
      </tr>
      <tr>
        <td>������</td>
        <td>300</td>
        <td>�ÿ��ѳ���</td>
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
    	
      //toogle(true) : �ش� ��ü�� �������ϴ�.
      //toogle(false) : �ش� ��ü�� ������ �ʽ��ϴ�.
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
</script>

