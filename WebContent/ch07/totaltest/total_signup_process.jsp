<%@page import="dao.MemberDAO"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="dto.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 

	MemberDAO 클래스를 작성하고 싱글턴 패턴을 적용 후, 
	- 회원 등록 함수를 작성하세요.
	
	문제 3-1) 소스 패키지 src 아래에 패키지 dto를 만들어주세요.
	문제 3-2) dto 패키지 안에 MemberVO 클래스를 만들어주세요.
	
	[셍성할 필드들]
	String mem_id
	String mem_pw
	String mem_name
	String mem_sex
	String filename
	
	[getter/setter 생성]
	
	문제3-3)
	넘겨받은 데이터들을 이용해 회원 등록을 진행해주세요.
	- 일반 폼 데이터와 프로필 이미지 파일 등등
	- 넘겨받은 프로필 이미지는 업로드 처리가 되어야한다.
	
	문제3-4)
	회원 가입 완료 후, 로그인 페이지로 이동해주세요.(이동 후 로그인을 진행해주세요.)
 -->
 <%
 	MemberVO memberVO = new MemberVO();
 	MemberDAO dao = MemberDAO.getInstance();
 	
 	String path = request.getServletContext().getRealPath("/resources/images");
	System.out.println(path);
	File tempFile = new File(path);
	
	if(!tempFile.exists()){
		tempFile.mkdirs();
	}
	
	DiskFileUpload upload = new DiskFileUpload();
	upload.setSizeMax(30000000);	//최대 크기
	upload.setSizeThreshold(1024);	//메모리상에 저장할 최대 크기(byte) - 버퍼 영역
	upload.setRepositoryPath(path);	//업로드된 파일을 임시로 저장할 경로()
	List items = upload.parseRequest(request);
	Iterator params = items.iterator();
	
	// 출력을 위한 Map 공간
	Map<String, String> dataMap = new HashMap<String, String>();
	
	// 파일 업로드 max 사이즈 설정
	int maxSize = 4 * 1024 * 1024;	//4MB
	boolean imgFlag = false;
	String msg = null;
	
	while (params.hasNext()) {
		FileItem item = (FileItem) params.next();
		
		if (item.isFormField()) {	//폼 페이지에서 전송된 요청 파라미터가 일반 데이터이면..
			String name = item.getFieldName();	//파라미터의 이름
			String value = item.getString("utf-8");	//파라미터의 값
			dataMap.put(name, value);
			
		} else {	//폼 페이지에서 전송된 요청 파라미터가 파일이면..
			String fileFieldName  = item.getFieldName();	//요청 파라미터의 이름
			String fileName = item.getName();	//저장 파일의 이름
			if(!fileName.equals("")){
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				long fileSize = item.getSize();	//파일 크기 정보
				File file = new File(path + "/" + fileName);
				
				// 파일 최대 사이즈 초과 시 알림!
				if(maxSize < fileSize){
					out.println("<marquee style='color:red;'>이미지 크기를 초과하였습니다!</marquee><br/>");
				}else{
					item.write(file);
					imgFlag = true;
					dataMap.put(fileFieldName, fileName);
				}
			}else{
				msg = "프로필 이미지를 선택하지 않았습니다.";
			}
		}
	}
	
	memberVO.setMem_id(dataMap.get("mem_id"));
	memberVO.setMem_pw(dataMap.get("mem_pw"));
	memberVO.setMem_name(dataMap.get("mem_name"));
	memberVO.setMem_sex(dataMap.get("mem_sex"));
	memberVO.setFilename(dataMap.get("filename"));
	
	dao.insertMember(memberVO);
	System.out.println("가입된 아이디: " + memberVO.getMem_id());
	System.out.println("비밀번호: " + memberVO.getMem_pw());
	response.sendRedirect("./total_signin.jsp");
 %>
 	