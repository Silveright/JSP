<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		 <%
	 		String id = application.getInitParameter("id");
	 		String pw = application.getInitParameter("password");
	 		String input_id=(String)session.getAttribute("id");
	 		String input_pw=(String)session.getAttribute("passwd");
	 	if(input_id.equals(id) && input_pw.equals(pw)) {
	 		session.setAttribute("id", id);
	 	}
	 %>
	
	
	if(input_id.equals(id) && passwd.equals("java")) {
			//���� ����
			HttpSession session = request.getSession();
			//���� ��ü id �Ӽ����� id �� ���� 
			session.setAttribute("id", id);
			response.sendRedirect("loginSuccess.jsp");
		} else if(id.equals("java")){
			out.println("<script>");
			out.println("alert('��й�ȣ�� ��ġ���� �ʽ��ϴ�.')");
			out.println("history.back()");//�ٷ� �� �������� �̵�
			out.println("</script>");
			out.close();
		} else{
			out.println("<script>");
			out.println("alert('���̵� ��ġ���� �ʽ��ϴ�.')");
			out.println("history.back()");
			out.println("</script>");
			out.close();
		}
		<script>
		location.href="template.jsp";
		</script>
</body>
</html>