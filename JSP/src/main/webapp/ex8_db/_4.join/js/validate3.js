	$(document).ready(function(){
		var is_idcheck_click=false;//id 중복 검사 여부
		var idcheck_value='';
		//var clicked=0;
		//var oldVal='';
		$('#myform').submit(function(){
			
			var id=$.trim($('#id').val());
			if(id ==''){
				alert('ID를 입력하세요');
				$('#id').focus();
				return false;
			}
			
			//$('#id').next().trigger('click');
			
			var pass=$.trim($('#pass').val());
			if(pass ==''){
				alert('비밀번호를 입력하세요');
				$('#pass').focus();
				return false;
			}
			
			var jumin1 =$.trim($('#jumin1').val());
			if(jumin1 ==''){
				alert('주민번호 앞자리를 입력하세요');
				$('#jumin1').focus();
				return false;
			}
			
			if($.trim($('#jumin1').val()).length !=6){
				alert('주민번호 앞자리 6자리를 입력하세요');
				$('#jumin1').val('').focus();
				return false;
			}
		
			var jumin2 =$.trim($('#jumin2').val());
			if(jumin2 ==''){
				alert('주민번호 뒷자리를 입력하세요');
				$('#jumin2').focus();
				return false;
			}
			
			if($.trim($('#jumin2').val()).length !=7){
				alert('주민번호 뒷자리 7자리를 입력하세요');
				$('#jumin2').val('').focus();
				return false;
			}
			
			var email = $.trim($('#email').val());
			if (email ==''){
				alert('E-mail 아이디를 입력하세요');
				$('#email').focus();
				return false;
			}

			var domain = $.trim($('#domain').val());
			if (domain ==''){
				alert('E-mail 도메인을 입력하세요');
				$('#domain').focus();
				return false;
			}
			
			/*var gender = $('input:radio:checked').length;
				if(gender==0){
					alert('남,여 중에서 1개를 선택하세요');
					return false;
				}*/
			
			//input:checkbox:checked
			var hobby = $('input[type=checkbox]:checked').length;
				if(hobby<2){
					alert("2개이상 취미를 선택하세요");
					return false;
				}

			var post = $.trim($('#post1').val());
			if (post ==''){
				alert('우편번호를 입력하세요');
				$('#post1').focus();
				return false;
			}
			
			if(!$.isNumeric($("#post1").val())){
				alert("우편번호는 숫자만 입력 가능합니다.")
				$("#post1").val("").focus();
				return false;
			}
			
			if(post.length!=5){
				alert("우편번호는 다섯 자리입니다.")
				$("#post1").focus();
				return false;
			}

			var address = $.trim($('#address').val());
			if (address ==''){
				alert('주소를 입력하세요');
				$('#address').focus();
				return false;
			}

			var intro = $.trim($('#intro').val());
			if (intro ==''){
				alert('자기소개를 입력하세요');
				$('#intro').focus();
				return false;
			}
			
			var submit_id_value=$.trim($('#id').val())
			if(!is_idcheck_click||submit_id_value !=idcheck_value){
				alert("ID 중복검사를 실행하세요");
				return false;
			}
			
			var result=$("#result").val();
			if(result=='-1'){
				alert("사용가능한 아이디로 다시 입력하세요");
				$("#id").val('').focus();
				$("#opener_message").text('');
				return false;
			}	
			
					
			
			/*if(idcheck_value!=id){
				is_idcheck_click=false;
			}else{
				is_idcheck_click=true;
			}
			
			if(is_idcheck_click==false){
				alert('ID 중복검사를 실행하세요')
				return false;
			}*/
		})
		
		
		//$('#idcheck')
		$('#myform > div > fieldset > div:nth-child(3) > input[type=button]:nth-child(2)').click(function(){
			var id=$.trim($('#id').val());
			if(id ==''){
				alert('ID를 입력하세요');
				$('#id').focus();
				return false;
			}else{
				pattern = /^[A-Z][A-Za-z_0-9]{3,}$/;
				if (pattern.test(id)) {
					var ref = "idcheck?id="+$("#id").val();
					window.open(ref, '', 'width=300, height=250');
					is_idcheck_click=true;
					idcheck_value=id;
		
				} else {
					alert("첫글자는 대문자이고 두번째부터는 대소문자, 숫자, _로 총 4개 이상이어야 합니다.")
					$('#id').val('').focus();
				}
			}
		})
		
		$('#jumin1').keyup(function(){
			var jumin1 =$.trim($('#jumin1').val());
			
			if($.trim($('#jumin1').val()).length==6){
				reg1=/^[0-9]{2}(0[1-9]|1[012])(0[1-9]|1[0-9]|2[0-9]|3[01])$/;
				if (reg1.test(jumin1)) {
					$('#jumin2').focus();
					}else {
						alert("주민번호 앞자리 형식에 맞지 않습니다.")
						$('#jumin1').val('').focus();
				} 
			}
		})

		$('#jumin2').keyup(function(){
			var jumin2 =$.trim($('#jumin2').val());
			
			if($.trim($('#jumin2').val()).length==7){
				reg2=/^[1234][0-9]{6}$/;
				if(reg2.test(jumin2)){
					//주민번호 뒷자리에 따라 남자 여자 성별 라디오버튼 자동선택
					var c = $('#jumin2').val().substring(0,1);
					var index=(c-1)%2; //c=1 또는 3이면 index=0 
									   //c=2 또는 4이면 index=1 
					$('input[type=radio]').eq(index).prop('checked',true);
				} else{
					alert('주민번호 뒷자리 형식에 맞지 않습니다.');
					$('#jumin2').val('').focus();
				}
			}
		})
		
		$('select').change(function(){
			if($("#sel").val()==''){
				$('#domain').val('').focus();
				$('#domain').prop("readOnly",false);
			}else{
				$('#domain').val($("#sel").val());
				$('#domain').prop("readOnly",true); 
			}
		})
		
		$('#postcode').click(function(){
			new daum.Postcode({
            oncomplete: function(data) {
            	console.log(data.zonecode)
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 
                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
 
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
              $("#post1").val(data.zonecode);
              $("#address").val(fullRoadAddr);
            }
        }).open();
		})
	})

