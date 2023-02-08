<%@page import="dto.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.BoardDaoImpl"%>
<%@page import="dao.IBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>게시글 상세 조회</title>
</head>
<body>
	<h3>게시판 상세  조회</h3>
	<hr>
	<%
	request.setCharacterEncoding("UTF-8");
	BoardVO bv = (BoardVO) request.getAttribute("bv");
	IBoardDao dao = BoardDaoImpl.getInstance();
	List<BoardVO> boardList = dao.selectBoard();
	
	%>

	<form action="./update.do" method="post">
	<div>
		<table border="1">
			<c:set var="boardList" value="<%=boardList %>" />
			<c:forEach var="item" items="${boardList }">
				<tr>
					<th>글 번 호</th>
					<td style = "text-align:center ">${item.bnum }</td>
				</tr>
				<tr>
					<th>글 제 목</th>
					<td style = "text-align:center ">${item.subject }</td>
				</tr>
				<tr>
					<th>작 성 자</th>
					<td style = "text-align:center ">${item.writer }</td>
				</tr>
				<tr>
					<th>작 성 일</th>
					<td style = "text-align:center ">${item.bdate }</td>
				</tr>
				<tr>
					<th>조 회 수</th>
					<td style = "text-align:center ">${item.views }</td>
				</tr>
				<tr>
					<th>글 내 용 </th>
					<td style = "text-align:center ">${item.bcon }</td>
				</tr>
			</c:forEach>

		</table>
		</div>
		</form>
		<hr>
		<div>
		<a href="./list.do">목록</a>
		<a href="./update.do?bnum=<%=bv.getBnum()%>">수정</a> 
		<a href="./delete.do?bnum=<%=bv.getBnum()%>"
						onclick="return confirm('삭제하시겠습니까?')">삭제</a>
		</div>
	
<!-- 
	리스트에서 선택한 해당 게시글 1개의 데이터를 출력해주세요.
	넘겨받은 게시판 데이터 객체를 코어태그에 저장하고 코어 태그를 이용해서 출력해주세요.
	c:set, c:out 등등 
	
	[출력 예]
	
	게시판 상세보기
	──────────────────────────────────────────────
	제목 : 
	작성자 작성일 조회수
	──────────────────────────────────────────────
	내용
	──────────────────────────────────────────────
	
	수정 삭제 목록
	
	1) 수정 버튼을 클릭 시, 수정 페이지(boardUpdateForm.jsp)로 넘어가서 수정을 진행 할 수 있도록 해주세요.
	
	2) 삭제 버튼을 클릭 시, "정말로 삭제하시겠습니까?" 라는 알림창이 뜨고 [확인]을 클릭 했을 때
	   삭제(boardRemove.jsp)를 진행해주세요. 삭제 후, 게시판 목록 페이지(boardList.jsp)로 이동해주세요.
	   
	3) 목록 버튼을 클릭 시, 목록 페이지(boardList.jsp)로 이동해주세요.
 -->
</body>
</html>