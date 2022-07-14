	<%-- 3. 표현식(Expression)
	(1)선언문 또는 스크립트릿 태그에서 선언된 변수나 메서드의 리턴값을 출력하기 위해 사용되는 방법
	(2)웹 컨테이너에 의해 _jspService()메서드 내부에 출력객체의 print()메서드 괄호안에
	   통째로 들어가므로 scriptlet과는 달리 세미콜론을 사용해서는 안된다.
	(3)형식
		<%=변수 %>
		<%=리턴값이 있는 메서드 %>
		<%=수식 %> 
	--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%!//1부터 100까지의 합을 구하는 sum()메서드 선언
    public int sum(){
     int total=0;
     for(int i=1; i<=100; i++){
    	 total +=i;
     }
	return total;
	}
%>
<style>
span{color:red}
</style>
<%//변수에 할당한다.
    String str="1부터 100까지의 합";
%>

<h1><%= str %>은 <span> <%= sum() %></span>입니다.</h1> 
<h1><%= str %>에 3을 곱하면<span> <%= sum()*3 %></span></h1>
<h1><%= str %>을 1000으로 나누면 <%= sum()/1000.0 %></h1>