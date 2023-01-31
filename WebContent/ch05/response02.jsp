<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<p>이 페이지는 5초마다 새로고침 됩니다.</p>
	
	<%
	// 5초마다 jsp 페이지가 갱신되도록 response 내장 객체의  setIntheader() 메소드를 작성
	response.setIntHeader("Refresh", 5);
	%>
	
	<!-- 5초 -->
	<p><%=new Date() %></p>
</body>
</html>