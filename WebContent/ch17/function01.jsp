<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>자바 문자열 검색</p>
	<!-- 설정된 문자열에 검색 문자열 java가 포함되었는지 확인하도록 fn:contains 태그를 작성합니다. -->
	<p>HELLO, java  server page => ${fn:contains ("hello JAVA server page!", "java") }</p>
	<!-- 설정된 문자열에 검색 문자열 java가 포함되었는지 확인하도록 fn:containsIgnoreCase 태그를 작성합니다. -->
	<!-- 대소문자 상관없이 검색합니다. -->
	<p>HELLO, java  server page => ${fn:containsIgnoreCase ("hello JAVA server page!", "java") }</p>
</body>
</html>