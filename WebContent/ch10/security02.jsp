<%--<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>결과 확인</h3>
	
 
 	<p>사용자명 : <%=request.getRemoteUser() %></p>
	<p>인증 방법 : <%=request.getAuthType() %></p>
	
	
	<p>인증한 사용자명이 역할명 "tomcat" 속하는 사용자인가요? <%=request.isUserInRole("tomcat") %></p>
	<p>인증한 사용자명이 역할명 "role1" 속하는 사용자인가요? <%=request.isUserInRole("role1") %></p>
</body>
</html>
--%>