<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
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
	<!-- 
	아래와 같이 출력하고, 수정 삭제 목록 기능을 작성해주세요.
	
	제목 : ~~~~~
	작성자 : ~~~~~
	____________
	내용 : ~~~~~~
	____________
	[수정][삭제][목록]
	
 -->
	<%@ include file="../dbconn.jsp"%>
	<%
		request.setCharacterEncoding("UTF-8");

		String no = request.getParameter("no");

	ResultSet rs = null;
	PreparedStatement pstmt = null;

	try {
		String sql = "select * from notice where bo_no=?";
		pstmt = conn.prepareStatement(sql);

		pstmt.setString(1, no);
		rs = pstmt.executeQuery();

		while (rs.next()) {
			no = rs.getString("bo_no");
			String title = rs.getString("bo_title");
			String cont = rs.getString("bo_content");
			String writer = rs.getString("bo_writer");
			String date = rs.getString("bo_date");
			int hit = rs.getInt("bo_hit");

			// 가져온 아이디, 비밃번호, 이름을 차례차례 출력해준다.
	%>
	<table border="1">
		<tr>
			<td>순번</td>
			<td><%=no%></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><%=title%></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><%=writer%></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><%=cont%></td>
		</tr>
		<tr>
			<td>일자</td>
			<td><%=date%></td>
		</tr>
		<tr>
			<td>조회수</td>
			<td><%=hit%></td>
		</tr>
	</table>
	<a href="update.jsp?no=<%=no%>&title=<%=title%>"><input type="button" value="수정" /></a>
	<a href="delete.jsp?bo_no=<%=no %>"><input type="button" value="삭제" /></a>
	<a href="list.jsp"><input type="button" value="목록" /></a>
	<%
	
	
	
		}
		sql = "update notice set bo_hit = bo_hit+1 where bo_no = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		pstmt.executeUpdate();
	} catch (SQLException e) {
	out.println("NOTICE 테이블호출이 실패했습니다.");
	out.println("SQLException : " + e.getMessage());
	} finally {
	if (rs != null)
	rs.close();
	if (pstmt != null)
	pstmt.close();
	if (conn != null)
	conn.close();
	}
	%>


	
</body>
</html>