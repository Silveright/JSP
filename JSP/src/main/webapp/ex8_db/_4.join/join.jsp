<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link href="<%=request.getContextPath()%>/ex8_db/_4.join/css/NewFile.css" rel="stylesheet" type="text/css">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src ='<%=request.getContextPath()%>/ex8_db/_4.join/js/validate3.js'></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> 
<title>Insert title here</title>
<style>
#opener_message{margin-top:-10px;margin-bottom:10px;}
</style>
</head>
<body>

	<form  name='myform' method='post' 
			 id='myform' action='join_ok'> 
    <div class='container'>
    <fieldset>
     <legend>ȸ�� ����</legend>
     <label for='id'>ID</label>
     <div>
     <input type='text' placeholder="Enter id" name='id' id='id'>
     <input type='button' value="ID�ߺ��˻�" id='idcheck'>
     <div id="opener_message"></div><input type="hidden" id="result">
     </div>
     
     <label for='pass'>Password</label>
     <input type='password' placeholder="Enter Password" name='pass' id='pass' >
     
     <label for='jumin1'>�ֹι�ȣ</label>
     <input  type='text' placeholder='�ֹι�ȣ ���ڸ�' 
     	 maxLength='6' name='jumin1' id='jumin1'>
     <b> - </b>
     <input type='text' placeholder='�ֹι�ȣ ���ڸ�'  maxLength='7' 
     		name='jumin2' id='jumin2'>
     
      <label for='email'>E-Mail</label>
      <input type='text' name='email' id='email'>@
      <input type='text' name='domain' id='domain' >            
      <select name='sel' id='sel' >
          <option value="">�����Է�</option>
          <option value="naver.com">naver.com</option>
          <option value="daum.net">daum.net</option>
          <option value="nate.com">nate.com</option>
          <option value="gmail.com">gmail.com</option>
      </select>
     
     <label>����</label>
     <div class='container2'><!-- type="radio"�� readOnly�� �۵����� �ʾ� onclick="return false"�� �ذ��Ѵ�.  -->
     	<input type='radio' name='gender' value='m' id='gender1' onclick="return false">����
    	<input type='radio' name='gender' value='f' id='gender2' onclick="return false">����
     </div>
     
     <label>���</label>
     <div class='container2'>
     <input type='checkbox' name='hobby' id='hobby1' value="����">����
     <input type='checkbox' name='hobby' id='hobby2' value="����">����
     <input type='checkbox' name='hobby' id='hobby3' value="�">�
     <input type='checkbox' name='hobby' id='hobby4' value="���">���
     <input type='checkbox' name='hobby' id='hobby5' value="����">����
     </div>
     
     <label for='post1'>�����ȣ</label>
     <input type='text' size='5' maxLength='5' name='post1' id='post1'>
     <input type='button' value="����˻�" id="postcode">
     
     <label for='address'>�ּ�</label>
     <input type='text' size='50' name='address' id='address'>
     
     <label for='intro'>�ڱ�Ұ�</label>
     <textarea rows='10' name='intro' id='intro'></textarea>
     
     <div class='clearfix'>
     <button type=submit class='signupbtn'>ȸ������</button>
     <button type=reset class='cancelbtn'>���</button>
     </div>
     </fieldset>
    </div>
   </form>
 </body>
</html>