package _1;
import java.io.*;
import java.util.Calendar;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//annotation ����
public class ServletTest3 extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request,
					  HttpServletResponse response) throws IOException{
		response.setContentType("text/html");
		response.setCharacterEncoding("euc-kr");
		Calendar c = Calendar.getInstance();
		int hour=c.get(Calendar.HOUR_OF_DAY);
		int minute=c.get(Calendar.MINUTE);
		int second=c.get(Calendar.SECOND);
		PrintWriter out = response.getWriter();
		out.write("<HTML><HEAD><TITLE>ServletTest</TITLE></HEAD>");
		out.write("<BODY style='background:#d2d2f5'><H1>");
		out.write("����ð��� ");
		out.write(Integer.toString(hour));
		out.write("�� ");
		out.write(Integer.toString(minute));
		out.write("�� ");
		out.write(Integer.toString(second));
		out.write("�� �Դϴ�.2</H1>");
		out.write("<span style='color:blue; font-weight:bold'>�������Դϴ�.</span>");
		out.write("</BODY></HTML>");
		out.close();
		
	}
}