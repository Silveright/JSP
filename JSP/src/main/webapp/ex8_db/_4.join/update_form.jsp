<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ex8_template.Template_join" %>
<!DOCTYPE html>
<html>
<head>
<title>update_form.jsp</title>
<meta name="viewport" content="width=device-width, initial-scsale=1">
<link rel="stylesheet"
	 href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="<%=request.getContextPath()%>/ex8_db/_4.join/css/NewFile.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src ='<%=request.getContextPath()%>/ex8_db/_4.join/js/validate3.js' charset="euc-kr"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> 

</head>
<body>
<%@include file="top.jsp" %>
<%
		Template_join temp = (Template_join) request.getAttribute("temp");
		if(temp != null){
	%>
		 
	<form  name='myform' method='post' 
			 id='myform' action='join_ok'> 
    <div class='container'>
    <fieldset>
     <legend>정보수정</legend>
     <label for='id'>ID</label>
     <div>
     <input type='text' placeholder="Enter id" name='id' id='id' readOnly
     		value="<%=temp.getId()%>" >
     <input type='button' value="ID중복검사" id='idcheck'>
     <div id="opener_message"></div><input type="hidden" id="result">
     </div>
     
     <label for='pass'>Password</label>
     <input type='password' value="<%=temp.getPassword()%>" placeholder="Enter Password" name='pass' id='pass' >
     
     <label for='jumin1'>주민번호</label>
     <input  type='text' placeholder='주민번호 앞자리' 
     	value="<%=temp.getJumin().substring(0,6)%>" maxLength='6' name='jumin1' id='jumin1'>
     <b> - </b>
     <input type='text' placeholder='주민번호 뒷자리' 
     	value="<%=temp.getJumin().substring(7,13)%>"  maxLength='7' 
     		name='jumin2' id='jumin2'>
     
      <label for='email'>E-Mail</label>
      <% String email = temp.getEmail();
    		String sub[] =email.split("@");
    		  %>
      <input type='text' name='email' id='email' value="<%=sub[0]%>">@
      <input type='text' name='domain'  value="<%=sub[1]%>" id='domain' >            
      <select name='sel' id='sel' >
          <option value="">직접입력</option>
          <option value="naver.com">naver.com</option>
          <option value="daum.net">daum.net</option>
          <option value="nate.com">nate.com</option>
          <option value="gmail.com">gmail.com</option>
      </select>
     
     <label>성별</label>
     <div class='container2'><!-- type="radio"는 readOnly가 작동하지 않아 onclick="return false"로 해결한다.  -->
     	<input type='radio' name='gender' value='m' id='gender1' onclick="return false">남자
    	<input type='radio' name='gender' value='f' id='gender2' onclick="return false">여자
     </div>
     
     <label>취미</label>
     <div class='container2'>
     <input type='checkbox' name='hobby' id='hobby1' value="공부">공부
     <input type='checkbox' name='hobby' id='hobby2' value="게임">게임
     <input type='checkbox' name='hobby' id='hobby3' value="운동">운동
     <input type='checkbox' name='hobby' id='hobby4' value="등산">등산
     <input type='checkbox' name='hobby' id='hobby5' value="낚시">낚시
     </div>
     
     <label for='post1'>우편번호</label>
     <input type='text' value="<%=temp.getPost()%>" size='5' maxLength='5' name='post1' id='post1'>
     <input type='button' value="우편검색" id="postcode">
     
     <label for='address'>주소</label>
     <input type='text' value="<%=temp.getAddress()%>" size='50' name='address' id='address'>
     
     <label for='intro'>자기소개</label>
     <textarea rows='10' name='intro' id='intro'><%=temp.getIntro() %></textarea>
     
     <div class='clearfix'>
     <button type=submit class='signupbtn'>Update</button>
     <button type=reset class='cancelbtn'>cancel</button>
     </div>
     </fieldset>
    </div>
   </form>
   <%	 } else {
				out.print("<h4>조회된 데이터가 없습니다.</h4>");
			}
			%>
	<script>
	$(document).ready(function(){
		
		 $("#gender1").prop("checked", true)
		 var gender = "<%=temp.getGender()%>"; 
		if(gender=="m"){ 
			$('#gender1').prop("checked",true);
		 }else{$('#gender2').prop("checked",true);}
		
		//$("input:radio").val().equalse.prop("checked",true) 
		
		var hobby ="<%=temp.getHobby()%>"
		var split = hobby.split(",");
		for(var i=0; i<split.length; i++){
			for(var j=0; j<$("input:checkbox").length; j++){
				if(split[i]==($("input:checkbox:eq("+j+")").val())){
					$("input:checkbox:eq("+j+")").prop("checked",true);
				}
			}
		} 
	})
	</script>
 </body>
</html>