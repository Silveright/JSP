<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>templatetest.jsp</title>
<style>
	footer{position:fixed; 
			bottom:0px; 
			height:3rem;
			background:#ccc;
			width:100%; 
			text-align:center;
			line-height:3rem;}

	section li{
		height:2rem;
	}
</style>
</head>
<%
	String pagefile=(String)request.getAttribute("pagefile");
%>
	
	<script>
	var result = '<%=session.getAttribute("join_result")%>';
	if(result != 'null'){//���� ��ü�� "join_result"�Ӽ��� ������ result�� null�̵�
		if(result ==='1'){
			alert('ȸ�� ������ �����մϴ�.');
		}else{
			alert('ȸ�� ���Կ� �����ϼ̽��ϴ�.');
		}
		<%session.removeAttribute("join_result");%>
	}
	var message ='<%=request.getAttribute("message")%>'; /* Login_OK.java, Update.java���� ���� */
		if(message!='null'){
			alert(message);
		}
	
	</script>
<body>
		<header>
			<div class="jumbotron text-center" style="margin-bottom:0">
			  <h1>��ǰ���</h1>
			</div>
		</header>
		<nav>
			<jsp:include page="top.jsp" /><br><br>
		</nav>
		<div class="container" style="margin-top:10px">
	  		<div class="row">
	    		<div class="col-sm-4">      
					<aside>
						<jsp:include page="left.jsp" />
					</aside>
			</div>
			<div class="col-sm-8" style="margin-bottom:5rem">
			<section>
				<jsp:include page='<%=pagefile+".jsp" %>'/>
			</section>
		</div>
	</div>
</div>
	<footer>
		<jsp:include page="bottom.jsp"/>
	</footer>
</body>
</html>

