<%@page import="dao.MemberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	문제1) 로그인 성공하여 회원 목록 페이지로 넘어올 때, 
	'아이디'님 환영합니다! 알림창을 띄워주세요.
	문제1)
	회원가입을 통해 가입한 회원들의 목록 전부를 가져와서 
	아래 테이블을 채워주세요.
	
	전체 목록 출력을 core태그를 이용하여 작성해주세요.
	회원목록이 없는 경우 "조회하실 회원정보가 존재하지 않습니다."를 출력해주세요
	회원목록이 있는 경우 목록 전체를 출력해주세요.
	- 출력은 core 태그들을 이용해서 출력해주세요.
	
	문제2)			
 -->
<%
	String id = (String) session.getAttribute("id");

	ArrayList<MemberVO> list = (ArrayList<MemberVO>) session.getAttribute("list");


%>
	<%
		if(id != null){
	%>
			<script>
				alert("<%=id%>님 환영합니다!");
			</script>
	<%
		}
	%>
	
	<c:set var="list" value="<%=list %>"></c:set>
	
	<%			
		if(list != null){
	%>
			<table border="1">
				<tr>
					<td>프로필</td>
					<td>아이디</td>
					<td>이름</td>
					<td>성별</td>
				</tr>
				<c:forEach items="${list }" var="mv">
					<tr>
						<td> <img src="/JSPBook/resources/images/${mv.getFilename() }"/></td>
						<td>${mv.getMem_id() }</td>
						<td>${mv.getMem_name() }</td>
						<td>${mv.getMem_sex() }</td>
					</tr>
				</c:forEach>
			</table>	
	<%
		}else{
	%>
			<script>
				alert("조회할 회원정보가 존재하지 않습니다.");
			</script>
	<%
		}
	%>			


</body>
</html>












