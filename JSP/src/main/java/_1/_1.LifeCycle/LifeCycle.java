package _1.LifeCycle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
	1.@�� annotation���� �ڹ� �ּ���ó�� �ҽ��ȿ� @��ȣ�� �Բ� ���ȴ�.
	2.�ּ���ó�� �����Ϸ��� ������ �˷��ִ� ��� �Ǵ� �ڹ� ���α׷� ���࿡ ���� ������ 
	  �����ϴ� �뵵�� ���ȴ�.
	3.@WebServlet ������ ���� ���� ���� ����� ���� 3.0���� �����Ѵ�.
	  �� �̻� web.xml�� ���� ���ο� ���� ������ �� �ʿ䰡 ����.
	4.@WebServlet �ֳ����̼��� urlPatterns�Ӽ��� ���� ���µ� �� �Ӽ��� 
	  �ش� ������ ���ε� URL ������ ������ �� ���ȴ�.
	  * @Webservlet(urlPatterns="/LifeCycle")�� �ǹ̴� 
	  * "http://localhost:8088/������Ʈ��/LifeCycle"�� ��û�� ������ 
	  * ������ �����̶�� �ǹ�
	5. urlPatterns�� �������� URL�� �����ϱ� ���� String�迭�� ����Ѵ�.
		��)@WebServlet(urlPatterns = "/a")
		��)@WebServlet(urlPatterns = {"/a"})
		��)@WebServlet(urlPatterns = {"/a" , "/b", "/c"})
*/
//@WebServlet(urlPatterns = {"/LifeCycle"})
public class LifeCycle extends HttpServlet {

	/*
		1.serialVersionUID�� ���� Ŭ�������� �˷��ִ� �ĺ��� ������ �ϸ�
		Serializable �������̽��� ������ Ŭ������ �������ϸ� �ڵ�������
		serialVersionUID ���� �ʵ尡 �߰��ȴ�.
		
		2.serialVersionUID�� �ڹ��� ����ȭ(��ü�� �����͸� byte������ �����ͷ� ��ȯ�ϴ� ���)��
		  ������ȭ(byte�� ��ȯ�� �����͸� ������ ��ü �����ͷ� ��ȯ�ϴ� ���) ����� ��
		  �ڵ������� �ο��ȴ�.
		
		3.������ȭ�� ����ȭ ���� Ŭ������ ������ �״���̸� ���� ��ȣ�� �ο��ǰ�
		  Ŭ������ ������Ұ� �ϳ��� �ٲ�� ������ �ٸ� serialVersionUID�� �ο��ȴ�.
		  �� ��� ������ȭ�� ������ �߻��Ѵ�.
		
		4.������ ��������� Ŭ������ serialVersionUID�� ����Ǿ� ������
		  ������ �� �߰����� �ʱ� ������ ������ ���� ������ �� �ִ�.
		
	*/
	private static final long serialVersionUID = 1L;
	
	public LifeCycle() {
		super();
		System.out.println("���� ������ �Դϴ�.");
	}
	
	/*
		�ݹ� �޼���(callback method) -� ��ü���� � ��Ȳ�� �߻��ϸ�
								   �����̳ʰ� �ڵ����� ȣ���Ͽ� ����Ǵ� �޼��带 �ǹ��Ѵ�.
								   �̷� �ݹ� �޼������ ������ �����Ѵ�.
			-init(), service(), destroy()
			 init() -> service() -> destroy()
	*/
	
	/*
		init()�޼���� ���� ��ü�� ������ ���� ȣ��Ǵ� �޼���� Ŭ���̾�Ʈ�κ���
		���ʷ� ���� ��û�� ���� �� �ѹ� ����ȴ�.
		���� �ʱ�ȭ �۾��� ���ȴ�.
	*/	
	
	public void init() throws ServletException{
		System.out.println("init()�Դϴ�.");
	}
	
	/*
		-�� �޼����� ��� ����� ���� ���ؼ��� �� ������ ������ �� �����ϰ� �ܼ��� �ٶ󺸸� ��� ��ٸ���.
		-���� ��ü�� �޸𸮿��� ������ �� ����ȴ�.
		-�ڿ� ���� �۾� � ���ȴ�.
	*/
	public void destroy() {
		System.out.println("destroy()�Դϴ�. -ȫ�浿");
	}
	
	/*
		Ŭ���̾�Ʈ�� ��û�� ���� ������ ����ȴ�.
		service()�޼��尡 ������ ���������� ������ ������.
		���� ���α׷� ������ �Ϸ�� �Ŀ��� ���� �����̳�(��Ĺ)�� �������� �� ������ �����ϰ�
		�� ������ ���񽺸� ��û�� Ŭ���̾�Ʈ�� �����Ѵ�.
		�̷ν� ������ �ϳ��� ��û�� ���� ó���� �Ϸ�ȴ�.
		(��û�ϸ� ������ ��û�� ���õ� �������� �����Եȴ�. >> ȭ�鿡�� �����͸� �Է¹����� request�� ���� ��Ե�)
		��û�� ���������� request�� response�� �����ǰ� �������.
		
		HTTP�޼��带 �����Ͽ� doGet()�� ȣ���� ��, doPost()�� ȣ���� �� �����ϸ�
		��û�� ���� ������ ȣ��ȴ�.
		���������� ���ΰ�ħ�� �غ���
	*/
	
	
	public void service(HttpServletRequest request, HttpServletResponse response)
					throws ServletException, IOException {
		System.out.print("service()�Դϴ�.");
		System.out.println("��û �ּ�"+ request.getRequestURL());
	}
}
