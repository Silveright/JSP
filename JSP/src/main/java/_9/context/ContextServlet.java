package _9.context;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/ex1/_9.context/context")
public class ContextServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ContextServlet() {
		super();
	}
	
	/*
		�� ���ø����̼��� ���� �ǰ� �ִ� ���� �����ϴ� ���� �ǹ�
		�����ֱⰡ �� ���ø����̼ǰ� ���� ��ü�� ServletContext�̴�.
		ServletContext�� �� ���ø����̼� ���񽺰� ���۵� �� �����ǰ� ����� �� �Ҹ�ȴ�.
	*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//request.getSession(): ���� ��ü�� �����´�.
		String value = request.getParameter("food");
		request.setAttribute("food", value);
		
		HttpSession session=request.getSession();
		session.setAttribute("food", value);
		
		ServletContext sc = request.getSession().getServletContext();
		sc.setAttribute("food", value);
		response.sendRedirect("scope.jsp");
	}
}
