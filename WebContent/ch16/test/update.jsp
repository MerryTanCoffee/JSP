<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>

<form action = "update_process.jsp" method = "post">
<input type="hidden" value=<%=request.getParameter("no")%> name="no"/>
	title : <input type = "text" name = "title"/><br/>
	content : <input type = "text" name = "content"/><br/>
	writer : <input type = "text" name = "writer"/><br/>
	<input type = "submit" value = "submit"/><br/>
</form>	
<!-- 
	먼저 수정할 게시글 정보를 출력하고
	제목, 내용, 작성자를 수정하기 위해 입력하고 게시글을 수정해주세요.
	제목, 내용, 날짜(수정한 현 날짜 시간)가 수정됩니다.
	
	제목 : 제목입니다.
	작성자 : a001
	-------------
	내용 : ~~~~~~~
	-------------
	[수정][취소]
 -->
</body>
</html>