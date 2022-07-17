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
@WebServlet("/ex3_implicit_object/_7.attribute/test/attributeTest1")
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
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//������ ������ ����: ĳ���� �� ����
		//�����ϴ� ������ Ÿ���� htmlŸ���̰�
		//charset=euc-kr�� �����ϸ� ����Ǵ� �����͵��� �ѱ�ó���� �� �κ�
		response.setContentType("text/html;charset=euc-kr");
		
		//�Ķ���� id ��������
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		
		//�Ķ���Ϳ� id��� �̸��� ���� ���
		//��) http://localhost:8088/JSP/ex2_jsp/Assm/login?passwd=1234
		if(id==null) {
			System.out.println("null�Դϴ�.");
		}
		
		//�Ķ���� 'id'���� ���� ���
		// http://localhost:8088/JSP/ex2_jsp/Assm/login?id=&passwd=1234
		if(id!=null && id.equals("")) {
			System.out.println("���� �Դϴ�. ");
		}
		
		HttpSession session = request.getSession();
		//���� ��ü id �Ӽ����� id �� ���� 
		session.setAttribute("name", name);
		session.setAttribute("id", id);
		response.sendRedirect("attributeTest1.jsp");
		
	}
}
