	$(document).ready(function(){
		var is_idcheck_click=false;//id �ߺ� �˻� ����
		var idcheck_value='';
		//var clicked=0;
		//var oldVal='';
		$('#myform').submit(function(){
			
			var id=$.trim($('#id').val());
			if(id ==''){
				alert('ID�� �Է��ϼ���');
				$('#id').focus();
				return false;
			}
			
			//$('#id').next().trigger('click');
			
			var pass=$.trim($('#pass').val());
			if(pass ==''){
				alert('��й�ȣ�� �Է��ϼ���');
				$('#pass').focus();
				return false;
			}
			
			var jumin1 =$.trim($('#jumin1').val());
			if(jumin1 ==''){
				alert('�ֹι�ȣ ���ڸ��� �Է��ϼ���');
				$('#jumin1').focus();
				return false;
			}
			
			if($.trim($('#jumin1').val()).length !=6){
				alert('�ֹι�ȣ ���ڸ� 6�ڸ��� �Է��ϼ���');
				$('#jumin1').val('').focus();
				return false;
			}
		
			var jumin2 =$.trim($('#jumin2').val());
			if(jumin2 ==''){
				alert('�ֹι�ȣ ���ڸ��� �Է��ϼ���');
				$('#jumin2').focus();
				return false;
			}
			
			if($.trim($('#jumin2').val()).length !=7){
				alert('�ֹι�ȣ ���ڸ� 7�ڸ��� �Է��ϼ���');
				$('#jumin2').val('').focus();
				return false;
			}
			
			var email = $.trim($('#email').val());
			if (email ==''){
				alert('E-mail ���̵� �Է��ϼ���');
				$('#email').focus();
				return false;
			}

			var domain = $.trim($('#domain').val());
			if (domain ==''){
				alert('E-mail �������� �Է��ϼ���');
				$('#domain').focus();
				return false;
			}
			
			/*var gender = $('input:radio:checked').length;
				if(gender==0){
					alert('��,�� �߿��� 1���� �����ϼ���');
					return false;
				}*/
			
			//input:checkbox:checked
			var hobby = $('input[type=checkbox]:checked').length;
				if(hobby<2){
					alert("2���̻� ��̸� �����ϼ���");
					return false;
				}

			var post = $.trim($('#post1').val());
			if (post ==''){
				alert('�����ȣ�� �Է��ϼ���');
				$('#post1').focus();
				return false;
			}
			
			if(!$.isNumeric($("#post1").val())){
				alert("�����ȣ�� ���ڸ� �Է� �����մϴ�.")
				$("#post1").val("").focus();
				return false;
			}
			
			if(post.length!=5){
				alert("�����ȣ�� �ټ� �ڸ��Դϴ�.")
				$("#post1").focus();
				return false;
			}

			var address = $.trim($('#address').val());
			if (address ==''){
				alert('�ּҸ� �Է��ϼ���');
				$('#address').focus();
				return false;
			}

			var intro = $.trim($('#intro').val());
			if (intro ==''){
				alert('�ڱ�Ұ��� �Է��ϼ���');
				$('#intro').focus();
				return false;
			}
			
			var submit_id_value=$.trim($('#id').val())
			if(!is_idcheck_click||submit_id_value !=idcheck_value){
				alert("ID �ߺ��˻縦 �����ϼ���");
				return false;
			}
			
			var result=$("#result").val();
			if(result=='-1'){
				alert("��밡���� ���̵�� �ٽ� �Է��ϼ���");
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
				alert('ID �ߺ��˻縦 �����ϼ���')
				return false;
			}*/
		})
		
		
		//$('#idcheck')
		$('#myform > div > fieldset > div:nth-child(3) > input[type=button]:nth-child(2)').click(function(){
			var id=$.trim($('#id').val());
			if(id ==''){
				alert('ID�� �Է��ϼ���');
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
					alert("ù���ڴ� �빮���̰� �ι�°���ʹ� ��ҹ���, ����, _�� �� 4�� �̻��̾�� �մϴ�.")
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
						alert("�ֹι�ȣ ���ڸ� ���Ŀ� ���� �ʽ��ϴ�.")
						$('#jumin1').val('').focus();
				} 
			}
		})

		$('#jumin2').keyup(function(){
			var jumin2 =$.trim($('#jumin2').val());
			
			if($.trim($('#jumin2').val()).length==7){
				reg2=/^[1234][0-9]{6}$/;
				if(reg2.test(jumin2)){
					//�ֹι�ȣ ���ڸ��� ���� ���� ���� ���� ������ư �ڵ�����
					var c = $('#jumin2').val().substring(0,1);
					var index=(c-1)%2; //c=1 �Ǵ� 3�̸� index=0 
									   //c=2 �Ǵ� 4�̸� index=1 
					$('input[type=radio]').eq(index).prop('checked',true);
				} else{
					alert('�ֹι�ȣ ���ڸ� ���Ŀ� ���� �ʽ��ϴ�.');
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
                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
 
                // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                var fullRoadAddr = data.roadAddress; // ���θ� �ּ� ����
                var extraRoadAddr = ''; // ���θ� ������ �ּ� ����
 
                // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // ���θ�, ���� ������ �ּҰ� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // ���θ�, ���� �ּ��� ������ ���� �ش� ������ �ּҸ� �߰��Ѵ�.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                
                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
              $("#post1").val(data.zonecode);
              $("#address").val(fullRoadAddr);
            }
        }).open();
		})
	})

