<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>오류 발생</h3>
	<p>예외 유형 : <%=exception.getClass().getName() %></p>
	<p>예외 값 : <%=exception.getMessage() %></p>
	<p></p>
</body>
</html>