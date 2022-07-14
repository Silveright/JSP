package _1.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//http://localhost:8088/JSP/ex1/_1.login/LifeCycleTest:
@WebServlet("/ex1/_1.login/LifeCycleTest")
public class LifeCycleTest_get extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request,
						 HttpServletResponse response)
					throws ServletException, IOException {
		//�����ϴ� ������ Ÿ���� html Ÿ���̰�
		//charset=euc-kr�� �����ϸ鼭 ����Ǵ� �����͵��� �ѱ� ó���� �� �κ��̴�.
		response.setContentType("text/html;charset=euc-kr");
		
		//getParameter()�޼���:
		/* 
		 html�� �±� �Ӽ� �� "name=id, name=passwd"�� ������ �Է��� �� ���۵Ǿ� �� �Ķ���� ���� ��ȯ�� �ִ� �޼���
		 Ŭ���̾�Ʈ���� ���۵Ǿ� ���� id��� �̸��� �Ķ���� ����
		 passwd��� �̸��� �Ķ���� ���� �޴� �κ��̴�.
		 id=admin&passwd=1234
		*/
		String id=request.getParameter("id");
		String passwd= request.getParameter("passwd");
		
		//���ڿ� ������ response��ü�� ������ ����� �� �ִ� ��� ��Ʈ���� ������ �κ�
		PrintWriter out= response.getWriter();
		
		//getContextPath(): �� ���ø����̼� ��������� ��ȯ�Ѵ�.
		//URL���� ��Ʈ��ȣ�� ������ ������ �� ���ø����̼� �̸��� �ǹ��ϸ� �� ���� �����մϴ�.
		out.println("�� ���ø����̼� ��� ����: " +request.getContextPath());
		
		//���信 id���� ���� passwd���� ���� ����ϴ� �κ�
		out.println("<br>"+"���̵�=" +id +"<br>");
		out.println("��й�ȣ=" +passwd+"<br>");
		out.close();
	}
}
