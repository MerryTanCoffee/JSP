<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		문제1) 넘겨받은 데이터를 아래와 같이 출력해주세요.
		
		[이미지] < 넘긴 이미지를 이미지 태그를 이용하여 출력
		아이디 : a001
		비밀번호 : 1234
		이름 : 홍길돌
		연락처 : 010-00000-0000
		성별 : 남성
		가입인사 : kkkkk
		
		문제2) 해당 페이지로 넘어온 파라미터들은 core 태그를 활용하고, EL 표현문으로
		출력
		
		문제3) 아래 내용에 따른 메세지를 출력해주세요.
		
			3-1) 프로필 이미지를 선택하지 않고 전송 시, '프로필 이미지를 선택하지 않았습
			니다.' 메시지 출력.
			
			3-2) 업로드 한 프로필 이미지 파일의 사이즈 크기가 4MB 초과 시, '이미지 크기를
			초과하여 이미지를 출력할 수 없습니다.' 메시지를 출력
	 -->
	 
	<%
		request.setCharacterEncoding("utf-8");

		String path = request.getContextPath()+"/img";
		File tempFile = new File(path);
		if(!tempFile.exists()){
			tempFile.mkdirs();
		}
		
		DiskFileUpload upload = new DiskFileUpload();
		
		upload.setSizeMax(5*1024*1024); // 업로드 할 파일의 최대 크기(byte)
		upload.setSizeThreshold(4096); // 메모리상에 저장할 최대 크기(byte)
		upload.setRepositoryPath(path); // 업로드된 파일을 임시로 저장할 경로
		
		List items = upload.parseRequest(request);
		Iterator params = items.iterator();
		
		String fileName = null;
		
		Map<String, String> map = new HashMap<>();
		List<String> hobby = new ArrayList<>(); 
		
		String str_size = "";
		long fileSize = 0;
		
		// 4MB
		int maxSize = 4*1024*1024; // 4MB, 파일 업로드 시 1개의 파일 당 사이즈(최대 사이즈)
		while(params.hasNext()){
			FileItem item = (FileItem) params.next();
			
			if(item.isFormField()){ // 폼 페이지에서 전송된 요청 파라미터가 일반 데이터라면
				String name = item.getFieldName(); // 파라미터의 이름
				String value = item.getString("utf-8"); // 파라미터 값
// 				out.println(name + "=" +value+"<br/>");
				
				if(name.equals("hobby")){
					hobby.add(value);
				}else{
					map.put(name, value);
				}
			}else{ // 파일일 때
				String fileFieldName = item.getFieldName(); // 요청 파라미터의 이름
				fileName = item.getName(); // 파일명
				String contentType = item.getContentType(); // 파일 콘텐츠타입(Mime type)
				fileSize = item.getSize(); // 파일 크기
				
// 				File file = new File(path + "/" + fileName);
				File file = new File(request.getSession().getServletContext().getRealPath("/") + "/img/" + fileName);
				
				if(maxSize < fileSize){
// 					out.println("이미지 크기를 초과하였습니다!<br>");
					str_size = "이미지 크기를 초과하였습니다!<br>";
				}else if(!fileName.equals("")){
					System.out.println("f "+fileName);
					item.write(file); // 파일 업로드(쓰기)
				}
				
			}
		}	
	
		String profile = fileName;
		
/* 		String id = request.getParameter("id");
		String pw = request.getParameter("passwd");
		String name = request.getParameter("name");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String sex = request.getParameter("sex");
		String[] hobby = request.getParameterValues("hobby");
		String comment = request.getParameter("comment"); */
		
 		String id = map.get("id");
		String pw = map.get("passwd");
		String name = map.get("name");
		String phone1 = map.get("phone1");
		String phone2 = map.get("phone2");
		String phone3 = map.get("phone3");
		String sex = map.get("sex");
		String comment = map.get("comment"); 
	%>
	
	<c:set var="profile" value="<%=profile %>"></c:set>
	<c:set var="id" value="<%=id %>"></c:set>
	<c:set var="pw" value="<%=pw %>"></c:set>
	<c:set var="name" value="<%=name %>"></c:set>
	<c:set var="phone1" value="<%=phone1 %>"></c:set>
	<c:set var="phone2" value="<%=phone2 %>"></c:set>
	<c:set var="phone3" value="<%=phone3 %>"></c:set>
	<c:set var="sex" value="<%=sex %>"></c:set>
	<c:set var="hobby" value="<%=hobby %>"></c:set>
	<c:set var="comment" value="<%=comment %>"></c:set>
	
	<%
		if(fileName.equals("") || fileName == null){
	%>
			<MARQUEE style="color:red;"><p>프로필 이미지를 선택하지 않았습니다.</p></MARQUEE>
	<%
		}else if(fileSize < 4*1024*1024){
	%>		
			<img src="../img/${profile }">
	<%
		}else{
	%>
			<p><%=str_size %></p>
	<%
		}
	%>
	
	<p>아이디 : <c:out value="<%=id %>"></c:out> </p>
	<p>비밀번호 : ${pw }</p>
	<p>이름 : <c:out value="${name }"></c:out></p>
	<p>연락처 : <c:out value="${phone1 }"></c:out>-<c:out value="${phone2 }"></c:out>-<c:out value="${phone3 }"></c:out></p>
	<p>성별 : <c:out value="${sex }"></c:out></p>
	<p>취미 : 
	<c:forEach items="${hobby }" var="item">
		<c:out value="${item }"></c:out> 
	</c:forEach>

	</p>
	<p>가입인사 : <c:out value="${comment }"></c:out> </p>	 
</body>
</html>