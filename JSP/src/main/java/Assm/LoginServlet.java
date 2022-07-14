package Assm;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/ex2_jsp/Assm/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}
	
	/*
		-Redirect 방식 : 이동(forward)될 때 브라우저의 주소표시줄의 URL이 변경되므로 
						요청이 바뀌게 된다.
		-이동한 jsp페이지에서는 서블릿에서 request영역의 공유한 속성값에 접근할 수 없다.
	*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//post 방식 요청 한글 처리
		request.setCharacterEncoding("euc-kr");
		
		//응답의 컨텐츠 형식: 캐릭터 셋 설정
		response.setContentType("text/html;charset=euc-kr");
		
		//파라미터 id와 passwd의 값 가져오기
		String id = request.getParameter("id");
		
		HttpSession session = request.getSession();
		//세션 객체 id 속성으로 id 값 저장 
		session.setAttribute("id", id);
		response.sendRedirect("template.jsp");
		
	}
}
/*
 * protected void doGet(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException { //request.getSession(): 세션
 * 객체를 가져온다. HttpSession session = request.getSession();
 * 
 * String value = request.getParameter("food"); request.setAttribute("food",
 * value);//request 객체에 저장 session.setAttribute("food", value);//session 객체에 저장
 * 
 * response.sendRedirect("redirect.jsp"); }
 */