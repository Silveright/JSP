<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%-- 
	*ǥ�����(Expression Language: EL)
	��Ĺ���� �����ϱ� ������ ���� ������ �ʿ� ����.
	JSP ��ũ��Ʈ ����Ͽ� �Ӽ� ������ �� �� ���ϰ� ����ϱ� ���� �����Ǵ� ���
		����: ${}
		
		ǥ���� �±�
	1. article�� �ڹٺ��� ���
	<%=article.getId()%>
	>> ${article.id} �Ǵ� ${article["id"]} �Ǵ� ${article['id']}
	
	2. <%=request.getParameter("name")%>
	>> ${param.name}
	
	3. <%=request.getParameterValues("hobby")%>
	>> ${paramValues.hobby} ����� ��Ʈ�� �迭 (String[])
		���ʴ�� ����� ���
		-${paramValues.hobby[0]}
		-${paramValues.hobby[1]}
		-${paramValues.hobby[2]}
	
	4. <%=request.getAttribute("hoho")%>
	>> ${requestScope.hoho}
	
	5.<%=session.getAttribute("id")%>
	>> ${sessionScope.id}
	
	6.${hoho} 
		�� ��쿡�� pageContext -> request -> session -> application���� ��ü ������
		'hoho'  �̸��� attribute�� ã�´�.

 --%>
<!DOCTYPE html>
<html>
<%request.setCharacterEncoding("euc-kr"); %>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>�Ѿ�� �̸�:${param.name}</h3>
<h3>�Ѿ�� ��� : ${paramValues.hobby[0]} ${paramValues.hobby[1]}</h3>
<h3>session ������ �Ӽ� id�� ��:  ${sessionScope.id}</h3>
<h3>${id}</h3>
</body>
</html>