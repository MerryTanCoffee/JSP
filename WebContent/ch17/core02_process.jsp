<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String number = request.getParameter("number");
%>
<c:set value = "<%=number %>" var="number"/>

<!-- 
	c:when 태그를 사용하여 조건문 number % 2 == 0 이 참이면 number 뱐수 값을 출력하도록 out 태그를 작성
	c:when 태그를 사용하여 조건문 number % 2 == 01이 참이면 number 뱐수 값을 출력하도록 out 태그를 작성
 	위 두 조건문에 해당하지 않으면 c:otherwise 가 실행되도록 한다.
 -->
<c:choose>
	<c:when test = "${number % 2 == 0}">
		<c:out value = "${number }"/>는 짝수입니다.
	</c:when>
	<c:when test = "${number % 2 == 1}">
		<c:out value = "${number }"/>는 홀수입니다.
	</c:when>
	<c:otherwise>
		숫자가 아닙니다.
	</c:otherwise>
</c:choose>
</body>
</html>