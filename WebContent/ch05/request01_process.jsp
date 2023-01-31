<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<%
	
	request.setCharacterEncoding("UTF-8");
	
	String userId = request.getParameter("id");
	String userPw = request.getParameter("pw");
	
	%>
	<!-- Form으로부터 전송받은 아이디와 비밀번호를 출력하도록 표현문 태그를 작성 -->
	<p>아이디 : <%=userId %></p>
	<p>비밀번호 : <%=userPw %></p>
	
</body>
</html>