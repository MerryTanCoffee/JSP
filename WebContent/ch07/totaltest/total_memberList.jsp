<%@page import="java.util.ArrayList"%>
<%@page import="dto.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.MemberDAO"%>
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
 <script type="text/javascript">
 	let msg = '<c:out value="${msg }"/>'; 
 	alert(msg);
 </script>
 
 <%
 	MemberDAO dao = MemberDAO.getInstance();
 	List<MemberVO> memberList = dao.getMemberList();
 %>
 	<h3>회원 목록</h3>
 	<hr>
 	<br><a href="#">회원등록</a><br><br>
 	
 	<table border="1">
 		<thead>
 			<tr>
 				<th>이미지</th>
 				<th>회원정보</th>
 				<th>버튼</th>
 			</tr>
 		</thead>
 		<tbody>
 		<c:set var="memList" value="<%=memberList %>"/>
 		<c:forEach var="item" items="${memList }">
 			<tr> 
 				<td>
 				<img alt="" src="<%=request.getContextPath()%>/resources/images/${item.filename}" width="200px">
 				</td>
 				<td>
 				<p>아 이 디 : ${item.mem_id }</p>
 				<p>비밀번호 : ${item.mem_pw }</p>
 				<p>이  름 : ${item.mem_name }</p>
 				<p>성  별 : ${item.mem_sex }</p>
 				</td>
 				<td>
 				<a href="#">상세정보</a>
 				</td>
 			</tr>
 		</c:forEach>
 			
 		</tbody>
 	
 	</table>
 	
 	
</body>
</html>