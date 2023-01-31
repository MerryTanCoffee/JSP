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

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String sex = request.getParameter("sex");
	String[] hobby = request.getParameterValues("hobby");
	String comment = request.getParameter("comment");
	%>
	
	<c:set var = "id" value = "<%=id %>"></c:set>
	<c:out value = "아이디  : ${id }"></c:out><br/>
	<c:set var = "pw" value = "<%=pw %>"></c:set>
	<c:out value = "비밀번호 : ${pw }"></c:out><br/>  
	<c:set var = "name" value = "<%=name %>"></c:set>
	<c:out value ="이름 : ${name }"></c:out><br/>
	<c:set var = "phone1" value ="<%=phone1 %>"></c:set>
	<c:set var = "phone2" value ="<%=phone2 %>"></c:set>
	<c:set var = "phone3" value ="<%=phone3 %>"></c:set>
	<c:out value = "핸드폰 번호 : ${phone1 }"></c:out>-<c:out value = "${phone2 }"></c:out>-<c:out value = "${phone3 }"></c:out><br/> 
	<c:set var = "sex" value = "<%=sex %>"></c:set>	
	<c:out value = "성별 : ${sex }"></c:out><br/>
	취미 : 
	<c:forEach items = "<%=hobby %>" var = "hob">
		<c:out value = "${hob }"/>
	</c:forEach>
	<c:set var = "comment" value = "<%=comment %>"></c:set>
	<c:out value = "소개 : ${comment }"></c:out><br/>	
</body>
</html>