<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<h2>표현문 태그</h2>
	<%
	// 변수 a b c에 값을 저장하도록 스크립틀릿 태그를 작성함
	int a = 10;
	int b = 20;
	int c = 30;
	%>
	
	<!-- 스크립틀릿 태그에 선언한 변수 a b c 의 값을 출력하도록 표현문 태그를 작성함. -->
	<%= a+b+c %>
</body>
</html>