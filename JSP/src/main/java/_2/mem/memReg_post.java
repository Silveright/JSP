package _2.mem;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex1/_2.mem/memReg")
public class memReg_post extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, 
						HttpServletResponse response)
				throws ServletException, IOException {
		response.setContentType("text/html;charset=euc-kr");
		
		String name=request.getParameter("name");
		String addr=request.getParameter("addr");
		String tel=request.getParameter("tel");
		String hobby =request.getParameter("hobby");
		
		PrintWriter out= response.getWriter();
		out.println("<html><head>"
			+"<style>table{border-collapse:collapse;width:50%;margin:0 auto} "
						+ "tr{height:3em; border-bottom:1px solid black } "
			+"td{width:60%}</style></head>");
		//out.println("<link href='../../css/table.css' type='text/css' rel='stylesheet'>");
		out.println("<table> <tr><th>회원명</th><td>"+name+"</td></tr>");
		out.println("<tr><th>주소</th><td>"+addr+"</td></tr>");
		out.println("<tr><th>전화번호</th><td>"+tel+"</td></tr>");
		out.println("<tr><th>취미</th><td>"+hobby+"</td></tr></table>");
		out.close();
	}	
		protected void doPost(HttpServletRequest request, 
				HttpServletResponse response)
		throws ServletException, IOException {
			request.setCharacterEncoding("euc-kr");
			doGet(request, response);
		
		
	}
}
