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
	<!-- 
		request.getHeader("User-Agent") request 내장 객체를 이용하여 가져온 Header
		'User-Agent' 를  EL 에서  header['User-Agent']로 작성이 가능합니다 .
	 -->
	 browser 변수값 설정
	 <hr/>
	 <c:set var ="hd" value = "${header }"/>
	 <c:set var ="userAgent" value = "${header['User-Agent'] }"/> 
	 <br/><hr/>
	 
	 User-Agent : <c:out value = "${hd['User-Agent'] }"/><br/>
	 Host : <c:out value = "${hd['Host'] }"/><br/>
	 Accept : <c:out value = "${hd['Accept'] }"/><br/>
	 Accept-Language : <c:out value = "${hd['Accept-Language'] }"/><br/>
	 Accept-Encoding : <c:out value = "${hd['Accept-Encoding'] }"/><br/>
	 Referer : <c:out value = "${hd['Referer'] }"/><br/>
	 Connection : <c:out value = "${hd['Connection'] }"/><br/>
	 Cache-Control : <c:out value = "${hd['Cache-Control'] }"/><br/>
	 <hr/>
	 
	 user-Agent : <c:out value = "${userAgent }"/>
	 <p>browser 변수 값 제거 후</p>
	 <c:remove var="userAgent"/>
	 userAgent : <c:out value = "${userAgent }"/>
</body>
</html>