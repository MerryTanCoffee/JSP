<%@page import="dao.IBoardDao"%>
<%@page import="dao.BoardDaoImpl"%>
<%@page import="dto.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>게시글 조회</title>
</head>
<body>
	<h3>게시판 조회</h3>

	<%
	request.setCharacterEncoding("UTF-8");
	IBoardDao dao = BoardDaoImpl.getInstance();
	List<BoardVO> boardList = dao.selectBoard();
	%>

	<div>
		<table border="1">
			<c:set var="boardList" value="<%=boardList%>" />
			<c:choose>

				<c:when test="${empty boardList }">
					<h3>데이터가 없습니다</h3>
				</c:when>
				<c:otherwise>
					<c:forEach var="i" items="${boardList }" begin="0" end="${fn:length(boardList)-1}" step="1">
					
						<tr>
							<th style="font-align:center">글 번 호</th>
							<th style="font-align:center">글 제 목</th>
							<th style="font-align:center">작 성 자</th>
							<th style="font-align:center">작 성 일</th>
							<th style="font-align:center">조 회 수</th>
						</tr>
						<hr>
						<tr>
						<%
						 for (int i = 0; i < boardList.size(); i++) {
						%>
							<td style="text-align: center"><a href="./detail.do?bnum=<%=boardList.get(i).getBnum()%>"><%=boardList.get(i).getBnum()%></a></td>
						<%
						 }
						%>							 
							<td style="text-align: center">${i.subject }</td>
							<td style="text-align: center">${i.writer }</td>
							<td style="text-align: center">${i.bdate }</td>
							<td style="text-align: center">${i.views }</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>

		</table>
					<hr>
					<a href="#">게시글 등록</a>
	</div>
	<!-- 
	1. 게시판 리스트를 table로 만들어서 출력해주세요.
		- boardList.jsp 페이지에다 만들어주세요
		- 넘겨받은 리스트 데이터를 코어태그를 이용하여 출력해주세요.
		  > c:set 리스트 저장 후 사용
		  > c:choose, c:when, c:otherwise
		  > c:forEach
		
		** 초반 데이터는 없습니다.
					제목						작성자		작성일			조회수
	─────────────────────────────────────────────────────────────────────────────
						조회하실 게시글이 존재하지 않습니다.
	─────────────────────────────────────────────────────────────────────────────						
		
	
		** 데이터가 있는 경우 아래와 같이 출력됩니다.
				제목						작성자		작성일			조회수
	─────────────────────────────────────────────────────────────────────────────
		게시판 제목입니다......! 1			허나훔		2022-12-12		1245
		게시판 제목입니다......! 2			송서영		2022-12-12		1245
		게시판 제목입니다......! 3			채진영		2022-12-12		1245
		게시판 제목입니다......! 4			배영호		2022-12-12		1245
		게시판 제목입니다......! 5			조은혁		2022-12-12		1245
		게시판 제목입니다......! 6			조현수		2022-12-12		1245
		.....
	─────────────────────────────────────────────────────────────────────────────
	 게시글 등록하기
	 
	2. 등록하기 버튼을 누르면 시큐리티에 의해 보호자원으로 설정되어 있습니다.
		해당 게시글 등록하기는 역할명 admin의 username "administrator" password "a0011" 로 설정해주세요
		그리고 admin 역할명에 해당하는 역할 계정이 아니고서는 접근 불가능하게 해주세요.
		시큐리티 인증 방식은 FORM 방식으로 하고, 로그인 페이지는 login.jsp로 설정해주세요.
		인증 실패 시, 에러 페이지는 login_failed 페이지로 설정해주세요.
		
	3. 게시판 리스트에서 내가 조회할 게시글 하나를 클릭 시, 게시판 상세보기 페이지로 이동합니다.
		- boardView.jsp 로 이동	
 -->

</body>
<jsp:include page="footer.jsp" />
</html>