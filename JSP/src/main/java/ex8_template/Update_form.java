package ex8_template;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


	@WebServlet("/update_form")
	public class Update_form extends HttpServlet{
		private static final long serialVersionUID = 1L;
		//anchor로 클릭해서 온 경우 doGet
		protected void doGet(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException {
			HttpSession session = request.getSession();
			String id = (String) session.getAttribute("id");
			//회원 정보를 알기 위해 session에서 id값을 가져와 보내줌
			if(id != null && !id.equals("")) {
				DAO dao = new DAO();
				Template_join temp = dao.selectInfo(id);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/ex8_db/_4.join/update_form.jsp");//View
				request.setAttribute("temp", temp );
				dispatcher.forward(request, response);
			}else {
				session.invalidate();
				response.sendRedirect("login");//세션의 속성 아이디가 존재하지 않을 경우 다시 로그인
			}
			
		}
	}
