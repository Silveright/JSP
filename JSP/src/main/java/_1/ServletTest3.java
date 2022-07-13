package _1;
import java.io.*;
import java.util.Calendar;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//annotation 삭제
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
		out.write("현재시각은 ");
		out.write(Integer.toString(hour));
		out.write("시 ");
		out.write(Integer.toString(minute));
		out.write("분 ");
		out.write(Integer.toString(second));
		out.write("초 입니다.2</H1>");
		out.write("<span style='color:blue; font-weight:bold'>서블릿입니다.</span>");
		out.write("</BODY></HTML>");
		out.close();
		
	}
}
