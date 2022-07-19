<!-- ServletContext�� �̿��� ���� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.*" %><!-- inputstream, outputstream ��� -->
<%@ page trimDirectiveWhitespaces="true"%>
<% 
	/* ���ε�� ������ �ٿ�ε�� ������ �����ϴ� ����� ����. ������ �ٿ�ε�� �������� ���� �̷���� 
	   �������� �������� �����͸� ������ ����� ��ü: response
	   response�� ���� �����͸� �Ǿ ������ ���� �ٿ�ε�*/
	String fileName = request.getParameter("file_name");
	System.out.println("fileName=" + fileName);
	
	String savePath = "upload";
	
	//������ ��ο��� �о���� ������ ������ ��θ� �˾ƿ;� �Ѵ�.
	//������ ���� ȯ�� ������ ��� �ִ� ��ü�� �����Ѵ�.
	//(application ���� ��ü�� �����Ѵ�.)
	ServletContext context = pageContext.getServletContext();
	String sDownloadPath = context.getRealPath(savePath);
	//�� �ι����� �ѹ������� ��Ÿ���� ������ ����.
	//String sDownloadPath = application.getRealPath(savePath);//jsp���
	
	//  "\"�߰��ϱ� ���� "\\"�� ����Ѵ�.
	String sFilePath = sDownloadPath + "\\" + fileName;
	System.out.println(sFilePath);
	
	byte b[]= new byte[4096];
	
	//sFilePath�� �ִ� ������ MimeType�� ���ؿ´�.
	String sMimeType = context.getMimeType(sFilePath);
	System.out.println("sMimeType>>>" + sMimeType);
	
	/* 
		1. Content-Type: ���۵Ǵ� Content�� � �������� �˷��ִ� ������ ������ �ִ�.
			-text/html , image/png, application/octet-stream���� ���� ������.
		2. Content-Type�� ���ؼ� �������� �ش� �����͸� ��� ó���ؾ� �� �� �Ǵ��� �� �ְԵȴ�.
			��) 
			(1) image/png: �������� �ش� ����Ʈ�� �̹����ν� �����Ѵ�.
			(2) application/octet-stream: ��Ȯ�� Binary ������ �ǹ��ϸ�,
										�� ��� �������� ������ �ٿ�ε��ϴ� ���·� �����Ѵ�.
			(3) text/javascript: �������� Content�� javascript������ ����ϰ� �ȴ�.
	
	 */
	 
	 /* octet-stream�� 8��Ʈ�� �� �����͸� �ǹ��ϸ� �������� ���� ���� ������ �ǹ��Ѵ�. */
	 //���� ������ �� �� ���� ���
	if(sMimeType == null)
		sMimeType = "application/octet-stream";
		
	response.setContentType(sMimeType);
	
	/* 
		- �� �κ��� �ѱ� ���ϸ��� ������ ���� �������ش�.
		- getBytes(ĳ���ͼ�):�ڹ� ���ο� �����Ǵ� �����ڵ� ���ڿ��� ���ڷ�
						������ ĳ���ͼ��� ����Ʈ �迭�� ��ȯ�ϴ� �޼����̴�
		- String(byte[] bytes, Charset charset)
		  String(����Ʈ�迭, ĳ���ͼ�) ������ : �ش� ����Ʈ �迭�� �־��� ĳ���� ������
		  								�����Ͽ� ��Ʈ���� ����� ������
	
	*/
	//euc-kr ������ ����Ʈ�� ���� ISO-8859-1�� �ν��ϵ��� ������ �����ش�.
	String sEncoding = new String(fileName.getBytes("euc-kr"), "ISO-8859-1");
	System.out.println(sEncoding);
	
	/* 
		-Content-Disposition : Content�� ��� ó���Ǿ�� �ϴ��� ��Ÿ����.
			1) Content-Disposition:
				inline: �������� Contente�� ��� ����ؾ� ���� ��Ÿ����.
						�̹����� ��� ���������� ��� ����ϸ�, ������ ��� �ؽ�Ʈ�� ����Ѵ�.
			2) Content-Disposition:
				attachment: �������� �ش� Content�� ó������ �ʰ� �ٿ�ε��ϰ� �ȴ�.
	 */
	 
	 response.setHeader("Content-Disposition", "attacthment; filename=" + sEncoding);
	/* response.setHeader("Content-Disposition", "inline; filename=" sEncoding);
	*/		
			
	/* 
		1.try-with-resource������ try() ��ȣ �ȿ� ����� �ڿ���
		  try���� ���� �� �ڵ����� close()�޼��带 ȣ���Ѵ�.
		
		2.try-with-resource���� ���� �ڵ����� ��ü�� close()�� ȣ��� �� �������� Ŭ������
			AutoCloseable�̶�� �������̽��� ������ ���̾�� �Ѵ�.
		����)try(){
			.....
		}catch(){
			
		}finally{}
	 */
	 
	 try(	//�� ���������� ��� ��Ʈ�� ����(response��ü�� �Ǿ� ������. �������� ���� �͵��� �� response ���)
			 BufferedOutputStream out2 =
			 		new BufferedOutputStream(response.getOutputStream());
			 //page trimDirectiveWhitespaces="true"�� ���� ������ 
			//		 .java���Ͽ��� ��½�Ʈ���� �̹� ����ϰ� �ǹǷ�(page directive�� �ش��ϴ� �κ� �ٹٲ��� �̷������ ����) 
			//getOutputStream()�� �̹� ȣ��ƴٴ� ������ �߻��� (jsp������ �߻�, ������ �Ű� �� �ʿ䰡 ���Եȴ�.)
			 //sFilePath�� ������ ���Ͽ� ���� �Է� ��Ʈ�� ����
			 BufferedInputStream in =
					 new BufferedInputStream(new FileInputStream(sFilePath));
			 )
	 		{
		 		int numRead;
		 		//read(b,0,b.length):����Ʈ �迭�� b�� 0�� ���� b.lengthũ�⸸ŭ �о�´�.
		 		while((numRead = in.read(b,0,b.length)) != -1){//���� �����Ͱ� �����ϴ� ���
		 			out2.write(b,0,numRead);//����Ʈ �迭 b�� 0�� ���� numReadũ�⸸ŭ �������� ���
		 		}//response�� �о�� ���� ���� �۾�
	 		} catch(Exception e){
	 			e.printStackTrace();
	 		}
%>