<!-- ServletContext를 이용한 예제 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.*" %><!-- inputstream, outputstream 사용 -->
<%@ page trimDirectiveWhitespaces="true"%>
<% 
	/* 업로드된 파일의 다운로드는 파일을 복사하는 개념과 같다. 파일의 다운로드는 브라우저를 통해 이루어짐 
	   서버에서 브라우저로 데이터를 보낼때 사용한 객체: response
	   response에 읽은 데이터를 실어서 보내는 것이 다운로드*/
	String fileName = request.getParameter("file_name");
	System.out.println("fileName=" + fileName);
	
	String savePath = "upload";
	
	//원본의 경로에서 읽어오기 때문에 원본의 경로를 알아와야 한다.
	//서블릿의 실행 환경 정보를 담고 있는 객체를 리턴한다.
	//(application 내장 객체를 리턴한다.)
	ServletContext context = pageContext.getServletContext();
	String sDownloadPath = context.getRealPath(savePath);
	//위 두문장을 한문장으로 나타내면 다음과 같다.
	//String sDownloadPath = application.getRealPath(savePath);//jsp방식
	
	//  "\"추가하기 위해 "\\"를 사용한다.
	String sFilePath = sDownloadPath + "\\" + fileName;
	System.out.println(sFilePath);
	
	byte b[]= new byte[4096];
	
	//sFilePath에 있는 파일의 MimeType을 구해온다.
	String sMimeType = context.getMimeType(sFilePath);
	System.out.println("sMimeType>>>" + sMimeType);
	
	/* 
		1. Content-Type: 전송되는 Content가 어떤 유형인지 알려주는 목적을 가지고 있다.
			-text/html , image/png, application/octet-stream등의 값을 가진다.
		2. Content-Type을 통해서 브라우저는 해당 데이터를 어떻게 처리해야 할 지 판단할 수 있게된다.
			예) 
			(1) image/png: 브라우저는 해당 컨텐트를 이미지로써 간주한다.
			(2) application/octet-stream: 미확인 Binary 정보를 의미하며,
										이 경우 브라우저는 파일을 다운로드하는 형태로 동작한다.
			(3) text/javascript: 브라우저는 Content를 javascript문서로 취급하게 된다.
	
	 */
	 
	 /* octet-stream은 8비트로 된 데이터를 의미하며 지정되지 않은 파일 형식을 의미한다. */
	 //파일 형식을 알 수 없는 경우
	if(sMimeType == null)
		sMimeType = "application/octet-stream";
		
	response.setContentType(sMimeType);
	
	/* 
		- 이 부분이 한글 파일명이 깨지는 것을 방지해준다.
		- getBytes(캐릭터셋):자바 내부에 관리되는 유니코드 문자열을 인자로
						지정된 캐릭터셋의 바이트 배열로 반환하는 메서드이다
		- String(byte[] bytes, Charset charset)
		  String(바이트배열, 캐릭터셋) 생성자 : 해당 바이트 배열을 주어진 캐릭터 셋으로
		  								간주하여 스트링을 만드는 생성자
	
	*/
	//euc-kr 파일을 바이트로 나눠 ISO-8859-1로 인식하도록 서버로 보내준다.
	String sEncoding = new String(fileName.getBytes("euc-kr"), "ISO-8859-1");
	System.out.println(sEncoding);
	
	/* 
		-Content-Disposition : Content가 어떻게 처리되어야 하는지 나타낸다.
			1) Content-Disposition:
				inline: 브라우저가 Contente를 즉시 출력해야 함을 나타낸다.
						이미지인 경우 브라우저에서 즉시 출력하며, 문서인 경우 텍스트로 출력한다.
			2) Content-Disposition:
				attachment: 브라우저는 해당 Content를 처리하지 않고 다운로드하게 된다.
	 */
	 
	 response.setHeader("Content-Disposition", "attacthment; filename=" + sEncoding);
	/* response.setHeader("Content-Disposition", "inline; filename=" sEncoding);
	*/		
			
	/* 
		1.try-with-resource문으로 try() 괄호 안에 선언된 자원은
		  try문이 끝날 때 자동으로 close()메서드를 호출한다.
		
		2.try-with-resource문에 의해 자동으로 객체의 close()가 호출될 수 있으려면 클래스가
			AutoCloseable이라는 인터페이스를 구현한 것이어야 한다.
		형식)try(){
			.....
		}catch(){
			
		}finally{}
	 */
	 
	 try(	//웹 브라우저로의 출력 스트림 생성(response객체에 실어 보낸다. 브라우저로 가는 것들은 다 response 사용)
			 BufferedOutputStream out2 =
			 		new BufferedOutputStream(response.getOutputStream());
			 //page trimDirectiveWhitespaces="true"를 쓰지 않으면 
			//		 .java파일에서 출력스트림을 이미 사용하게 되므로(page directive에 해당하는 부분 줄바꿈이 이루어지기 때문) 
			//getOutputStream()이 이미 호출됐다는 오류가 발생함 (jsp에서만 발생, 서블릿은 신경 쓸 필요가 없게된다.)
			 //sFilePath로 지정한 파일에 대한 입력 스트림 생성
			 BufferedInputStream in =
					 new BufferedInputStream(new FileInputStream(sFilePath));
			 )
	 		{
		 		int numRead;
		 		//read(b,0,b.length):바이트 배열의 b의 0번 부터 b.length크기만큼 읽어온다.
		 		while((numRead = in.read(b,0,b.length)) != -1){//읽을 데이터가 존재하는 경우
		 			out2.write(b,0,numRead);//바이트 배열 b의 0번 부터 numRead크기만큼 브라우저로 출력
		 		}//response에 읽어온 것을 쓰는 작업
	 		} catch(Exception e){
	 			e.printStackTrace();
	 		}
%>