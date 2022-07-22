package ex8_template;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
	public class Login extends HttpServlet{
		private static final long serialVersionUID = 1L;
		
		protected void doGet(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException {
			String id="";
			
			//쿠키를 가지고 오는 부분
			Cookie[] cookies = request.getCookies();
			if(cookies != null) {
				for(int i=0;i<cookies.length;i++) {
					if(cookies[i].getName().equals("id")) {
						id=cookies[i].getValue();
					}
				}
			}
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/ex8_db/_4.join/login.jsp");
			request.setAttribute("id", id);
			dispatcher.forward(request, response);
		}
	}
