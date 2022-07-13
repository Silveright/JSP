package _4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//@WebServlet("/ex1/_4.check/choiceFruit")
public class ChoicefruitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public ChoicefruitServlet() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out= response.getWriter();

		/*
			1.getPrameterValues()
			 예) fruit=apple.png&fruit=grap.png&fruit=strawberry.png&fruit=water-melon.png
				하나의 파리미터 이름(fruit)으로 값이 여러개 올 경우 사용하는 메서드
				체크박스의 이름은 공통적으로 fruit로 지정되어 있으므로 각 체크박스의 값으로
				과일이미지 파일명을 지정하여 파라미터 값으로 과일 이미지 이름이 전송되도록 하고 있다.
				
		   2.getParameter(): 하나의 파라미터로 하나의 값만 오는 경우 사용하는 메서드
		     하나의 파라미터 이름으로 값이 여러개 전송되어 올 경우 이 메서드 사용시
		     처음 선택 한 값만 알 수 있다.
		     예) fruit=apple.png&fruit=grap.png&fruit=strawberry.png&fruit=water-melon.png
		     fruit= apple.png에서 값을 가져온다.
		*/
		
		System.out.println("처음으로 선택한 과일 "+request.getParameter("fruit"));
		String[] f = request.getParameterValues("fruit");
		out.println("<html><head>"
				+"<style>body{background:black} table{background:yellow; margin:0 auto} "
							+ "td,tr{font-color:red;border:1px solid black;text-align:center} "
				+"</style></head>");
			out.println("<table><tr>");
		for(String fruit:f) {
			out.write("<td>"+fruit+"</td>");
//			System.out.println(fruit);
		}
		out.write("</tr><tr>");
		for(String fruit:f) {
			out.println("<td><img src='../../image/"+fruit+"' width=80px></td></td>");
		}
		out.write("</tr></table>");
		
	}
			
	
}
