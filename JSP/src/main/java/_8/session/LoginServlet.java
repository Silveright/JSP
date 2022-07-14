package _8.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/ex1/_8.session/login_ok")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}
	
	/*
		-Redirect ��� : �̵�(forward)�� �� �������� �ּ�ǥ������ URL�� ����ǹǷ� 
						��û�� �ٲ�� �ȴ�.
		-�̵��� jsp������������ �������� request������ ������ �Ӽ����� ������ �� ����.
	*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//post ��� ��û �ѱ� ó��
		request.setCharacterEncoding("euc-kr");
		
		//������ ������ ����: ĳ���� �� ����
		response.setContentType("text/html;charset=euc-kr");
		
		//��� ��Ʈ�� ����
		PrintWriter out = response.getWriter();
		//�Ķ���� id�� passwd�� �� ��������
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		//�Է¹��� ���� ��
		if(id.equals("java") && passwd.equals("java")) {
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
	}
}
