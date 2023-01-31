<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<h2>스크립틀릿 태그</h2>
	<%
		// 스크립틀릿 태그는 자바 코드로 이루어진 로직 부분을 표현하며
		// out 객체를 사용하지 않고도 쉽게 HTML 응답을 만들어 낼 수 있다.
		//  스크립틀릿 태근느 가장 일반적으로 사용되면 변수 또는 메소드 선언,
		// 유효식 등 다수를 포함할 수 있다.
		
		// 지역 변수 a,b에 값을 저장하도록 스크립틀릿 태그를 작성함.
		int a = 2;
		int b = 3;
		int sum = a+b;
		out.println("2+3=" + sum);
	%>
	<hr/>
	<%
		// 지역 변수 a,b를 1씩 증가시킴
		a++;
		b++;
		sum=a+b;
		out.println("3+4="+ sum);
	%>
</body>
</html>