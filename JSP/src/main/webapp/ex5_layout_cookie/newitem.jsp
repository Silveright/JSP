<%@ page language="java" 
         contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%--https://www.w3schools.com/bootstrap4/tryit.asp?filename=trybs_filters_table&stacked=h --%>

<div class="container mt-3">
  <h2>�Ż�ǰ ���  Table</h2>
  <p>��ǰ�Է��ϼ���.</p>  
  <input class="form-control" id="myInput" type="text" placeholder="Search..">
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
        <td>������ s21 ��Ʈ��</td>
        <td>1000</td>
        <td>�Ｚ</td>
      </tr>
      <tr>
        <td>LG�׷� ��Ʈ�� PC</td>
        <td>100</td>
        <td>LG ����</td>
      </tr>
      <tr>
        <td>�ѷ��� ��</td>
        <td>700</td>
        <td>�Ｚ</td>
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

