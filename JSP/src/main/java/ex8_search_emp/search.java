package ex8_search_emp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import ex8_Emp.Emp;
/*
 *DAO(Data Access Object)클래스
 -데이터 베이스와 연동하여 레코드의 추가, 수정, 삭제 작업이 이루어지는 클래스
*/
@WebServlet("/col_select")
public class search extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public search() {
		super();
	}
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
	DAO dao = new DAO();
	int field = Integer.parseInt(request.getParameter("field"));
	String search_word = request.getParameter("search");
	ArrayList<Emp> list =dao.select(field, search_word);
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("/ex8_db/_2.list/list2.jsp");//View
	request.setAttribute("list", list);
	dispatcher.forward(request, response);
}
}
