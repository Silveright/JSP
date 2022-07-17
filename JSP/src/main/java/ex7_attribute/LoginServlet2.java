package ex7_attribute;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/ex3_implicit_object/_7.attribute/test/attributeTest2")
public class LoginServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet2() {
		super();
	}
	
	/*
		-Redirect 방식 : 이동(forward)될 때 브라우저의 주소표시줄의 URL이 변경되므로 
						요청이 바뀌게 된다.
		-이동한 jsp페이지에서는 서블릿에서 request영역의 공유한 속성값에 접근할 수 없다.
	*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//응답의 컨텐츠 형식: 캐릭터 셋 설정
		//응답하는 데이터 타입이 html타입이고
		//charset=euc-kr로 지정하며 응답되는 데이터들의 한글처리를 한 부분
		response.setContentType("text/html;charset=euc-kr");
		
		//파라미터 id 가져오기
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		
		HttpSession session = request.getSession();
		//세션 객체 id 속성으로 id 값 저장 
		session.setAttribute("email", email);
		session.setAttribute("address", address);
		session.setAttribute("tel", tel);
		response.sendRedirect("attributeTest2.jsp");
		
	}
}
