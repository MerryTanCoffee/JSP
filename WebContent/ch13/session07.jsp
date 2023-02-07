<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>-----------------세션 유효시간 변경 전-----------------</h3>
<%
	int defaultTime = session.getMaxInactiveInterval();
	int time = session.getMaxInactiveInterval() / 60;
	
	out.println("세션 유효 시간(기본) : " + defaultTime +"초<br/>");
	out.println("세션 유효 시간 : " + time +"분<br/>");
%>

<h3>-----------------세션 유효시간 변경 후-----------------</h3>
<% 
	session.setMaxInactiveInterval(60*60);
	time = session.getMaxInactiveInterval();
	out.println("세션 유효 시간 : " + time +"분<br/>");
%>

</body>
</html>