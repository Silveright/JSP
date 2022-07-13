package _6.redirect;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/ex1/_6.redirect/RedirectServlet")
public class RedirectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RedirectServlet() {
		super();
	}
	
	/*
	 로그인페이지, 회원가입 폼 등 request 에 값을 저장해 뿌려줄 필요없이 데이터만을 입력받은 경우
	 값을 가져가는 경우에는 dispatcher방식을 사용한다. 
	 페이지 이동방법
		-Redirect 방식 : 이동될 때 브라우저의 주소표시줄의 URL이 변경되므로 요청이 바뀌게 된다.
		-이동한 jsp페이지에서는 서블릿에서 request영역의 속성값에 접근할 수 없다.
	*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("요청방식 : "+request.getMethod());
		System.out.println("파라미터 food의 값 : "+request.getParameter("food"));
		//응답이 있다는 의미: 그전의 요청과 응답은 사라진다.
		//새로운 요청이 생긴다.
		response.sendRedirect("redirect.jsp");
	}
}
