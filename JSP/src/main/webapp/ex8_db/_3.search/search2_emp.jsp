<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<form action='col_select'>
		<h3>검색할 컬럼명을 선택하세요</h3>
		<input type='search' name='search' class="form-control mb-3" placeholder="검색어를 입력하세요">
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
	<script>
		var menus= ["사원번호", "사원이름", "직급", "매니저", "입사일자", "급여", "커미션", "부서번호"];
		var output = "<select name='field' class='custom-select mt-3 mb-3'>"
		$.each(menus,function(index,item){
			output+="<option value=" + index + ">" + menus[index] + "</option>";
		})
		output += "</select>"
		$("form").find("input").before(output);
	</script>
	</div>
</body>
</html>