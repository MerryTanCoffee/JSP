<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		split, join
	 -->
	 <!-- split 함수를 이용하여 해당 문자열을 ' '(공백)을 구분자로 각각 나눈다
	 변수 texts는 ' '(공백_으로 나뉘어진 배열  -->
	 <c:set var="texts" value = "${fn:split('Hello, Java Server Pages!',' ')}"/>
	 <c:forEach var ="i" begin = "0" end ="${fn:length(texts) -1 }">
	 	<p>text[${i }] = ${texts[i] }</p>
	 </c:forEach>
	 
	 <hr/>
	 
	 <!-- 분리된 문자열과 '-'을 연결하도록 fn:join 태그 작성 -->
	 <p>
	 	<c:out value = "${fn:join(texts,'-') }"/>
	 </p>
</body>
</html>