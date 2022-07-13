/*
 * 사용할 클래스들을 import한다.
 -서블릿을 생성할 때는 javax.servlet.*와 javax.servlet.http.*는 반드시 import해주어야 한다.
 -서블릿에 관한 클래스는 javax.servlet 패키지에 포함되어 있고
  http요청을 처리하는 클래스들은 javax.servlet.http에 속해 있기 때문이다.
 */
package _1;
import java.io.*;
import java.util.Calendar;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//@WebServlet(urlPatterns= {"/currentTime"})
/*
 * 서블릿을 정의한다.
 * -서블릿 클래스를 정의하려면 반드시 HttpServlet클래스를 상속받는다.
 * -HttpServlet 클래스에 서블릿에 관한 일반적인 기능이 정의되어 있기 때문에 
 *  HttpServlet클래스를 상속받은 자식 클래스 또한 서블릿 클래스가 된다. 
*/
public class ServletTest설명 extends javax.servlet.http.HttpServlet{
	private static final long serialVersionUID = 1L;
	//doGet메서드를 정의하는 부분이다.
	//클라이언트에서 요청이 GET방식으로 전송되어 오면 doGet메서드가 자동 실행되게 된다.
	//톰캣이 doGet 메서드 실행해줌
	public void doGet(HttpServletRequest request,
					  HttpServletResponse response) throws IOException{
		//응답 데이터의 MIME타입을 HTML타입의 text로 지정한다.
		response.setContentType("text/html");
		
		//응답 타입의 문자 인코딩 타입을 한글이 제대로 출력되도록 지정한다.
		response.setCharacterEncoding("euc-kr");
		
		//Calendar객체를 생성하여 객체로 부터 시간,분,초 값을 얻어온다.
		Calendar c = Calendar.getInstance();
		int hour=c.get(Calendar.HOUR_OF_DAY);
		int minute=c.get(Calendar.MINUTE);
		int second=c.get(Calendar.SECOND);
		
		///응답에 내용을 출력할 출력 스트림을 생성한다.
		PrintWriter out = response.getWriter();
		
		//클라이언트로 응답할 내용을 HTML타입의 데이터로 출력하는부분
		out.write("<HTML><HEAD><TITLE>ServletTest</TITLE></HEAD>");
		out.write("<BODY><H1>");
		out.write("현재시각은 ");
		out.write(Integer.toString(hour));
		out.write("시 ");
		out.write(Integer.toString(minute));
		out.write("분 ");
		out.write(Integer.toString(second));
		out.write("초 입니다.");
		out.write("</H1></BODY></HTML>");
		out.close();
		
	}
}
