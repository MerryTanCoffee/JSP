<%@page import="java.util.List"%>
<%@page import="dao.BoardDaoImpl"%>
<%@page import="dao.IBoardDao"%>
<%@page import="dto.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
BoardVO bv = (BoardVO) request.getAttribute("bv");
IBoardDao dao = BoardDaoImpl.getInstance();
List<BoardVO> boardList = dao.selectBoard();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>게시글 수정</title>
</head>
<body>
	<h3>게시글 수정</h3><hr>

	<form action="./update.do" method="post">
		<div>

			<input type="hidden" name="bnum" value="<%=bv.getBnum()%>" />
			<dl>
				<dt>글 제 목</dt>
				<dt style="text-align: center">
					<input type="text" name="subject" value="<%=bv.getSubject()%>">
				</dt>
			</dl>
			<dl>
				<dt>글 내 용</dt>
				<dt style="text-align: center">
					<textarea name="bcon" placeholder="내용 입력"><%=bv.getBcon()%></textarea>
				</dt>
			</dl>
			<hr>
			<div class="bt_wrap">
				<dl>
					<dt>
						<input type="submit" value="수정">
					</dt>
					<dt>
						<a href="./list.do">취소</a>
					</dt>
				</dl>
			</div>
		</div>
	</form>

	<!-- 
	수정할 게시글 정보를 넘겨받고, 수정을 진행해주세요.
	수정이 실패하여 에러가 발생 할 경우, exceptionBoard_error.jsp 페이지로 이동할 수 있게 해주세요.
	
	수정 완료 후, 수정이 완료 된 게시판 상세보기 페이지(boardView.jsp)로 이동해주세요.
 -->
</body>
</html>