<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		아이디 : 00
		비밀번호 : 00
		이름 : 00
		연락처 : 000-000-000
		성별 : 00
		취미 : 00
		소개 : 00000000000
		
		위와 같은 형식으로 출력해주세용.
		출력는 Core태그를 이용하여 출력해주세용.
		취미는 Core태그의  반복문을 이용하여 출력할 수 있도록 해주세용.
	 -->
<%
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("id"); 
		String userPw = request.getParameter("pw"); 
		String name = request.getParameter("name"); 
		String phone1 = request.getParameter("phone1"); 
		String phone2 = request.getParameter("phone2"); 
		String phone3 = request.getParameter("phone3");
		String sex = request.getParameter("sex"); 
		String[] hobby = request.getParameterValues("hobby"); 
		String comment = request.getParameter("comment"); 
	%>
	<c:set var = "userId" value = "<%=userId %>"></c:set>
	<c:out value ="아이디 : ${userId }"></c:out><br/>
	<c:set var = "userPw" value = "<%=userPw %>"></c:set>
	<c:out value ="비밀번호 : ${userPw }"></c:out><br/>
	<c:set var = "name" value = "<%=name %>"></c:set>
	<c:out value ="이름 : ${name }"></c:out><br/>
	<c:set var = "phone1" value = "<%=phone1 %>"></c:set> 
	<c:set var = "phone2" value = "<%=phone2 %>"></c:set> 
	<c:set var = "phone3" value = "<%=phone3 %>"></c:set> 
	<c:out value ="핸드폰 번호 : ${phone1 }"></c:out>-<c:out value ="${phone2 }"></c:out>-<c:out value ="${phone3 }"></c:out><br/>
	<c:set var = "sex" value = "<%=sex %>"></c:set>
	<c:out value ="성별 : ${sex }"></c:out><br/>
	취미 : 
	<c:forEach items ="<%=hobby %>" var="hob">
		<c:out value="${hob }"/>
	</c:forEach><br/>
	<c:set var = "comment" value = "<%=comment %>"></c:set>
	<c:out value ="소개 : ${comment }"></c:out><br/>
</body>
</html>