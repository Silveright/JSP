package ex8_template;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//http://localhost:8088/JSP/select_select
@WebServlet("/delete")
public class delete extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
						HttpServletResponse response) throws ServletException, IOException {
				String id =request.getParameter("id");
				DAO dao = new DAO();
				int result = dao.delete(id);
				

				HttpSession session = request.getSession();
				session.setAttribute("del_result", result);
				//이동한다.
				response.sendRedirect("list");
	}
}
