<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action = "form_process.jsp" method = "post">
	title : <input type = "text" name = "title"/><br/>
	content : <input type = "text" name = "content"/><br/>
	writer : <input type = "text" name = "writer"/><br/>
	<input type = "submit" value = "submit"/><br/>
</form>
<!-- 
	제목, 내용, 작성자를 입력 받고 게시글을 등록해주세요.
	날짜는 오늘 날짜가 자동으로 들어가도록 해주세요.
	조회수는 기본으로 0이 들어갑니다.
	게시글 번호는 시퀀스가 1씩 증가하여 들어갑니다.
	
	제목 : -------
	작성자 : ------
	내용 : -------
	-------------
	[ 등록 ] [ 목록 ]
	
	처리폼을 만들고 처리 process 를 자유롭게 작성하여 진행해도 좋습니다.
 -->
</body>
</html>