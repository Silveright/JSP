package _7.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/ex1/_7.session/SessionServlet")
public class RedirectServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RedirectServlet2() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//request.getSession(): 세션 객체를 가져온다.
		HttpSession session = request.getSession();
		
		String value = request.getParameter("food");
		request.setAttribute("food", value);//request 객체에 저장
		session.setAttribute("food", value);//session 객체에 저장
		
		response.sendRedirect("redirect.jsp");
	}
}
