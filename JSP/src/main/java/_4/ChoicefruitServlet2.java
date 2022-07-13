package _4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/ex1/_4.check/choiceFruit")
public class ChoicefruitServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public ChoicefruitServlet2() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out= response.getWriter();

		/*
			1.getPrameterValues()
			 ��) fruit=apple.png&fruit=grap.png&fruit=strawberry.png&fruit=water-melon.png
				�ϳ��� �ĸ����� �̸�(fruit)���� ���� ������ �� ��� ����ϴ� �޼���
				üũ�ڽ��� �̸��� ���������� fruit�� �����Ǿ� �����Ƿ� �� üũ�ڽ��� ������
				�����̹��� ���ϸ��� �����Ͽ� �Ķ���� ������ ���� �̹��� �̸��� ���۵ǵ��� �ϰ� �ִ�.
				
		   2.getParameter(): �ϳ��� �Ķ���ͷ� �ϳ��� ���� ���� ��� ����ϴ� �޼���
		     �ϳ��� �Ķ���� �̸����� ���� ������ ���۵Ǿ� �� ��� �� �޼��� ����
		     ó�� ���� �� ���� �� �� �ִ�.
		     ��) fruit=apple.png&fruit=grap.png&fruit=strawberry.png&fruit=water-melon.png
		     fruit= apple.png���� ���� �����´�.
		*/
		
		System.out.println("ó������ ������ ���� "+request.getParameter("fruit"));
		String[] f = request.getParameterValues("fruit");
		out.println("<html><head>"
				+"<style>body{background:black} table{background:yellow; margin:0 auto; top:30%; position:relative} "
							+ "td{color:red; border:1px solid black;text-align:center; font-size:20px; height:2em; width:200px} "
				+"</style></head>");
			out.println("<body><table><tr>");
		for(String fruit:f) {
			out.write("<td>"+fruit+"</td>");
		}
		
		out.write("</tr><tr>");
		
		for(String fruit:f) {
			out.println("<td><img src='../../image/"+fruit+"' width=80px></td>");
		}
		out.write("</tr></table></body></html>");
		out.close();
	}
			
	
}