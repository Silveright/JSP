package ex8_search;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ex8_Dept.Dept;
/*
 *DAO(Data Access Object)클래스
 -데이터 베이스와 연동하여 레코드의 추가, 수정, 삭제 작업이 이루어지는 클래스
*/
//http://localhost:8088/JSP/search
@WebServlet("/search")
public class search extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public search() {
		super();
	}
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
	DAO dao = new DAO();
	int deptno = Integer.parseInt(request.getParameter("deptno"));
	ArrayList<Dept> list =dao.select(deptno);
	RequestDispatcher dispatcher = request.getRequestDispatcher("/ex8_db/_2.list/list.jsp");//View
	request.setAttribute("list", list);
	dispatcher.forward(request, response);
}
}
