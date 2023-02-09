<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "../dbconn.jsp" %>
<table border = "1" width="100%">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>내용</th>
		<th>작성자</th>
		<th>작성일</th>
	</tr>
	
	<%
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "select * from notice";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				String no = rs.getString("BO_NO");
				String title = rs.getString("BO_TITLE");
				String content = rs.getString("BO_CONTENT");
				String writer = rs.getString("BO_WRITER");
				String date = rs.getString("BO_DATE");
						
				// 가져온 아이디, 비밀번호, 이름을 차례 차례 출력해준다.
			%>
				<tr>
					<td><a href ="detail.jsp?no=<%=no %>"><%=no %></a></td>
					<td><%=title %></td>
					<td><%=content %></td>
					<td><%=writer %></td>
					<td><%=date %></td>
				</tr>
				
			<%
			}
		} catch(SQLException e) {
			out.println("BOARD 테이블 호출이 실패했습니다.<br/>");
			out.println("SQLException : " + e.getMessage());
		} finally {
			if(rs != null)
				rs.close();
			if(pstmt != null)
				pstmt.close();
			if(conn != null)
				conn.close();
		}
	%>
<!-- 
	공지사항 게시판을 만들어 주세요
	JDBC를 이용해  CRUD를 진행하기
	NOTICE 테이블 작성하기
	BO_NO NUMBER(8) NOT NULL PK,
	BO_TITLE VARCHAR2(150) NOT NULL,
	BO_CONTENT VARCHAR2(2000) NOT NULL,
	BO_WRITER VARCHAR2(150) NOT NULL,
	BO_DATE DATE NOT NULL,
	BO_HIT NUMBER(8) NOT NULL
	
	SEQUENCE SEQ_NOTICE 1부터 시작 1씩 증가 CACHE 사용 안함
	
	공지사항 게시판 목록을 만들어 주세요
	
	  번호 	| 		제목		| 		작성자		|		작성일		 |	조회수
	------------------------------------------------------------------------------
	  1		|	제목임		|		a001		|	2023-02-08 14:15 |	  2
	------------------------------------------------------------------------------
	 [등록]	|  			
 -->
</table> 
<a href = "form.jsp">[등록]</a>
</body>
</html>