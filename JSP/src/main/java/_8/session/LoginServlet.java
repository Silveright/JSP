package _8.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/ex1/_8.session/login_ok")
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
		
		//출력 스트림 생성
		PrintWriter out = response.getWriter();
		//파라미터 id와 passwd의 값 가져오기
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		//입력받은 값과 비교
		if(id.equals("java") && passwd.equals("java")) {
			//세션 생성
			HttpSession session = request.getSession();
			//세션 객체 id 속성으로 id 값 저장 
			session.setAttribute("id", id);
			response.sendRedirect("loginSuccess.jsp");
		} else if(id.equals("java")){
			out.println("<script>");
			out.println("alert('비밀번호가 일치하지 않습니다.')");
			out.println("history.back()");//바로 전 페이지로 이동
			out.println("</script>");
			out.close();
		} else{
			out.println("<script>");
			out.println("alert('아이디가 일치하지 않습니다.')");
			out.println("history.back()");
			out.println("</script>");
			out.close();
		}
	}
}
