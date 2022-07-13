package _10.test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/ex1/_10.test/send")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DispatcherServlet() {
		super();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		System.out.println("요청방식 : "+request.getMethod());
		System.out.println("파라미터 food의 값 : "+request.getParameter("food"));
		String id=request.getParameter("id");
		String pass=request.getParameter("pass");
		String jumin1=request.getParameter("jumin1");
		String jumin2=request.getParameter("jumin2");
		String email=request.getParameter("email");
		String domain=request.getParameter("domain");
		String gender=request.getParameter("gender");
		String hobby=request.getParameter("hobby");
		String post1=request.getParameter("post1");
		String address=request.getParameter("address");
		String intro=request.getParameter("intro");
		
		//데이터베이스에서 가지고오는 자료가 쓰일 경우 dispatcher방식을 사용한다. ex)DTO
		request.setAttribute("id", id);
		request.setAttribute("pass", pass);
		request.setAttribute("jumin1", jumin1);
		request.setAttribute("jumin2", jumin2);
		request.setAttribute("email", email);
		request.setAttribute("domain", domain);
		request.setAttribute("gender", gender);
		request.setAttribute("hobby", hobby);
		request.setAttribute("post1", post1);
		request.setAttribute("address", address);
		request.setAttribute("intro", intro);
		
		//dispatcher.jsp : 이동할 페이지 주소 요처에 변화가 없다(request, response 그대로 사용)
		RequestDispatcher dispatcher = request.getRequestDispatcher("dispatcher.jsp");
		//이동한다.
		dispatcher.forward(request, response);

		
	}
}
