<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<h2>선언문 태그</h2>
	<%!
		// 전역 메소드 sum()을 선언하기 위해 선언문 태그를 작성
		int sum(int a, int b) {
			return a + b;
	}
	%>
	<%
		// println() 메소드를 이용하여 내용을 출력하도록 스크립틀릿 태그를 작성
		// 여기서 선언된  sum() 메소드는 선언문 태그에 선언된 
		out.println("a + b = " + sum(2,3));
	%>
</body>
</html>