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
		웹 애플리케이션이 서비스 되고 있는 동안 유지하는 것을 의미
		생명주기가 웹 애플리케이션과 같은 객체는 ServletContext이다.
		ServletContext는 웹 애플리케이션 서비스가 시작될 때 생성되고 종료될 때 소멸된다.
	*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//request.getSession(): 세션 객체를 가져온다.
		String value = request.getParameter("food");
		request.setAttribute("food", value);
		
		HttpSession session=request.getSession();
		session.setAttribute("food", value);
		
		ServletContext sc = request.getSession().getServletContext();
		sc.setAttribute("food", value);
		response.sendRedirect("scope.jsp");
	}
}
