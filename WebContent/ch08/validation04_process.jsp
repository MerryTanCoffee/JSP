<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>가입하였습니다!</h3>
<hr/>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String id2 = request.getParameter("id2");
	String pw2 = request.getParameter("pw2");
%>

<h3>Javascript</h3>
<p>아이디 <%=id %></p>
<p>비밀번호 <%=pw %></p>

<h3>Jquery</h3>
<p>아이디 <%=id2 %></p>
<p>비밀번호 <%=pw2 %></p>
</body>
</html>