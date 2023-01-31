<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("id");
	String userPw = request.getParameter("pw");
	String userName = request.getParameter("name");
	String userSex = request.getParameter("sex");
	String userHp = request.getParameter("hp");
	String userAddr = request.getParameter("addr");
	%>	
	
	<c:set var = "userId" value = "<%=userId %>"></c:set>
	<c:out value = "아이디  : ${userId }"></c:out><br/>
	<c:set var = "userPw" value = "<%=userPw %>"></c:set>
	<c:out value = "비밀번호 : ${userPw }"></c:out><br/>
	<c:set var = "userName" value = "<%=userName %>"></c:set>
	<c:out value = "이름 : ${userName }"></c:out><br/>
	<c:set var = "userSex" value = "<%=userSex %>"></c:set>
	<c:out value = "성별 : ${userSex }"></c:out><br/>
	<c:set var = "userHp" value = "<%=userHp %>"></c:set>
	<c:out value = "핸드폰번호 : ${userHp }"></c:out><br/>
	<c:set var = "userAddr" value="<%=userAddr %>"></c:set>
	<c:out value = "주소 : ${userAddr }"></c:out><br/>
	
	<%
	response.setHeader("Refresh", "5;URL=https://www.naver.com/");
	%> 
</body>
</html>