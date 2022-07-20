package ex8_Dept;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//http://localhost:8088/JSP/dept_select
@WebServlet("/dept_select")
public class Dept_select extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
						HttpServletResponse response) throws ServletException, IOException {
				DAO dao = new DAO();
				ArrayList<Dept> list = dao.selectAll();//ArrayList에 Dept테이블을 담아온다.
				RequestDispatcher dispatcher = request.getRequestDispatcher("/ex8_db/_2.list/list.jsp");//View
				request.setAttribute("list", list );
				dispatcher.forward(request, response);
	}
}
