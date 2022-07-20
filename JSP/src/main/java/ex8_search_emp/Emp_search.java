package ex8_search_emp;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//http://localhost:8088/JSP/emp_search_form
@WebServlet("/emp_search_form")
public class Emp_search extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public Emp_search() {
		super();
	}
	protected void doGet(HttpServletRequest request,
						HttpServletResponse response) throws ServletException, IOException {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/ex8_db/_3.search/search2_emp.jsp");//View
				dispatcher.forward(request, response);
	}
}
