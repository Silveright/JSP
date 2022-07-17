package ex7_attribute;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/ex3_implicit_object/_7.attribute/test/attributeTest2")
public class LoginServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet2() {
		super();
	}
	
	/*
		-Redirect ��� : �̵�(forward)�� �� �������� �ּ�ǥ������ URL�� ����ǹǷ� 
						��û�� �ٲ�� �ȴ�.
		-�̵��� jsp������������ �������� request������ ������ �Ӽ����� ������ �� ����.
	*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//������ ������ ����: ĳ���� �� ����
		//�����ϴ� ������ Ÿ���� htmlŸ���̰�
		//charset=euc-kr�� �����ϸ� ����Ǵ� �����͵��� �ѱ�ó���� �� �κ�
		response.setContentType("text/html;charset=euc-kr");
		
		//�Ķ���� id ��������
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		
		HttpSession session = request.getSession();
		//���� ��ü id �Ӽ����� id �� ���� 
		session.setAttribute("email", email);
		session.setAttribute("address", address);
		session.setAttribute("tel", tel);
		response.sendRedirect("attributeTest2.jsp");
		
	}
}
