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
		// 선언문 태그는 변수나 메소드 등을 선언하는 태그
		// 선언문 태그로 선언된 변수는 서블릿 프로그램으로 번역될 때 클래스 수준의 
		// 멤버 변수가 되므로 전역변수로 사용한다.
		
		// 변수 data에 50을 저장하도록 선언문 태그를 작성
		int data = 50;
	%>
	<%
		// out sowkd rorcpdml println() 메소드를 이용하여 내용을 출력하도록
		
		out.println("Value of the variable is : " + data);
	%>
</body>
</html>