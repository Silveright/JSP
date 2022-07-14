package Assm;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/ex2_jsp/Assm/login")
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
		
		//�Ķ���� id�� passwd�� �� ��������
		String id = request.getParameter("id");
		
		HttpSession session = request.getSession();
		//���� ��ü id �Ӽ����� id �� ���� 
		session.setAttribute("id", id);
		response.sendRedirect("template.jsp");
		
	}
}
/*
 * protected void doGet(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException { //request.getSession(): ����
 * ��ü�� �����´�. HttpSession session = request.getSession();
 * 
 * String value = request.getParameter("food"); request.setAttribute("food",
 * value);//request ��ü�� ���� session.setAttribute("food", value);//session ��ü�� ����
 * 
 * response.sendRedirect("redirect.jsp"); }
 */