/*
 * ����� Ŭ�������� import�Ѵ�.
 -������ ������ ���� javax.servlet.*�� javax.servlet.http.*�� �ݵ�� import���־�� �Ѵ�.
 -������ ���� Ŭ������ javax.servlet ��Ű���� ���ԵǾ� �ְ�
  http��û�� ó���ϴ� Ŭ�������� javax.servlet.http�� ���� �ֱ� �����̴�.
 */
package _1;
import java.io.*;
import java.util.Calendar;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//@WebServlet(urlPatterns= {"/currentTime"})
/*
 * ������ �����Ѵ�.
 * -���� Ŭ������ �����Ϸ��� �ݵ�� HttpServletŬ������ ��ӹ޴´�.
 * -HttpServlet Ŭ������ ������ ���� �Ϲ����� ����� ���ǵǾ� �ֱ� ������ 
 *  HttpServletŬ������ ��ӹ��� �ڽ� Ŭ���� ���� ���� Ŭ������ �ȴ�. 
*/
public class ServletTest���� extends javax.servlet.http.HttpServlet{
	private static final long serialVersionUID = 1L;
	//doGet�޼��带 �����ϴ� �κ��̴�.
	//Ŭ���̾�Ʈ���� ��û�� GET������� ���۵Ǿ� ���� doGet�޼��尡 �ڵ� ����ǰ� �ȴ�.
	//��Ĺ�� doGet �޼��� ��������
	public void doGet(HttpServletRequest request,
					  HttpServletResponse response) throws IOException{
		//���� �������� MIMEŸ���� HTMLŸ���� text�� �����Ѵ�.
		response.setContentType("text/html");
		
		//���� Ÿ���� ���� ���ڵ� Ÿ���� �ѱ��� ����� ��µǵ��� �����Ѵ�.
		response.setCharacterEncoding("euc-kr");
		
		//Calendar��ü�� �����Ͽ� ��ü�� ���� �ð�,��,�� ���� ���´�.
		Calendar c = Calendar.getInstance();
		int hour=c.get(Calendar.HOUR_OF_DAY);
		int minute=c.get(Calendar.MINUTE);
		int second=c.get(Calendar.SECOND);
		
		///���信 ������ ����� ��� ��Ʈ���� �����Ѵ�.
		PrintWriter out = response.getWriter();
		
		//Ŭ���̾�Ʈ�� ������ ������ HTMLŸ���� �����ͷ� ����ϴºκ�
		out.write("<HTML><HEAD><TITLE>ServletTest</TITLE></HEAD>");
		out.write("<BODY><H1>");
		out.write("����ð��� ");
		out.write(Integer.toString(hour));
		out.write("�� ");
		out.write(Integer.toString(minute));
		out.write("�� ");
		out.write(Integer.toString(second));
		out.write("�� �Դϴ�.");
		out.write("</H1></BODY></HTML>");
		out.close();
		
	}
}
