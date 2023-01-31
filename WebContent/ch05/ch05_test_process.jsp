<%@page import="java.util.Date"%>
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
	<!--  ch05_test.jsp 에서 전송받은 데이터 전부를 taglib를 이용하여 출력해주세요. 
	
	[출력 예시]
	
	아이디 : a001
	비밀번호 : 1234
	이름 : 홍길동
	성별 : 남자
	핸드폰 번호 : 010-1234-1234
	주소 : 대전 서구 오류동 123
	
	[여기까지 가능한 사람 진행하기]
	출력 완료 후 5초 뒤에 naver.com 으로 홈페이지 이동하기
	
	-->
	<%
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("id"); 
	String userPw = request.getParameter("pw");
	String userName = request.getParameter("name");
	String userSex = request.getParameter("sex");
	String userHp = request.getParameter("hp");
	String userAddr = request.getParameter("addr");
	%>
	
<!-- <c:set var ="userId" value="<%=userId %>"></c:set>
	<c:set var = "userPw" value="<%=userPw %>"></c:set>
	<c:set var = "userName" value="<%=userName %>"></c:set>
	<c:set var = "userSex" value="<%=userSex %>"></c:set>
	<c:set var = "userHp" value="<%=userHp %>"></c:set>
	<c:set var = "userAddr" value = "<%=userAddr %>"></c:set> -->
	<c:out value ="아이디 : ${userId}"></c:out><br/>
	<c:out value ="비밀번호 : ${userPw}"></c:out><br/>
	<c:out value = "이름  : ${userName }"></c:out><br/> 
	<c:out value = "성별 : ${userSex}"></c:out><br/>
	<c:out value = "핸드폰번호 : ${userHp}"></c:out><br/>
	<c:out value = "주소 : ${userAddr}"></c:out><br/>
	

	<!-- <%
	response.setHeader("Refresh","5;URL=https://www.naver.com/");
	
	%>  -->
	
	<br/>
	<!-- 선생님 -->
	<p id = "p1"></p>
	<script type="text/javascript">
	var a = 0;
	var pTag = document.getElementById("p1");
	
	// [방법1]
	<!--  setInterval(() => {
		a++;
		pTag.innerHTML = a + "초 뒤에 이동합니다.!";
		if (a == 5)
			location.href = "https://www.naver.com";
	},1000); -->
	
	// [방법2]
	setTimeout(() => {
		location.href = "https://www.naver.com";
	}, 5000);
	</script>



</body>
</html>