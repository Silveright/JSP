package _6.redirect;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/ex1/_6.redirect/RedirectServlet")
public class RedirectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RedirectServlet() {
		super();
	}
	
	/*
	 �α���������, ȸ������ �� �� request �� ���� ������ �ѷ��� �ʿ���� �����͸��� �Է¹��� ���
	 ���� �������� ��쿡�� dispatcher����� ����Ѵ�. 
	 ������ �̵����
		-Redirect ��� : �̵��� �� �������� �ּ�ǥ������ URL�� ����ǹǷ� ��û�� �ٲ�� �ȴ�.
		-�̵��� jsp������������ �������� request������ �Ӽ����� ������ �� ����.
	*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("��û��� : "+request.getMethod());
		System.out.println("�Ķ���� food�� �� : "+request.getParameter("food"));
		//������ �ִٴ� �ǹ�: ������ ��û�� ������ �������.
		//���ο� ��û�� �����.
		response.sendRedirect("redirect.jsp");
	}
}
