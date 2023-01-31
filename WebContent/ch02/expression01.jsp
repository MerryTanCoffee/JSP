<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>

<!-- 
	표현문 태그는 웹 브라우저에 출력할 부분을 표현한다.
	표현문 태그를 이용하여 선언문 태그 또는 스크립틀릿 태그에서 선언된 변수나
	메소드의 반환 값을 외부로 출력할 수 있다.
	표현문 태그는 스크립틀릿 태그에서 사용할 수 없으므로 이 경우에는 out.println() 메소드를 사용해야한다.
	
	현재 날짜를 출력하도록 표현문 태그를 작성함.ㄴ
 -->
	<h2>표현문 태그</h2>
	<p>Today's date : <%=new java.util.Date() %>
</body>
</html>