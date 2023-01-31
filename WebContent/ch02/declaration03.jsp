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
		// 
		String makeItLower(String data) {
		return data.toLowerCase();
	}
	%>
	<%	
		// println() 메소드로 makeItLower() 메소드를 호출하여 내용을 출력하도록
		// 스크립틀릿 태그를 작성함
		// println() 메소드는 선언문 태그에 선언된 전역 메소드인  makeItLower()를 호출함
		out.println(makeItLower("Hello World!"));
	%>
</body>
</html>