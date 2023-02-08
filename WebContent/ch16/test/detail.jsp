<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file = "../dbconn.jsp"%>
<table border = "1" width="100%">
<tr>
		<th>번호</th>
		<th>제목</th>
		<th>내용</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>조회수</th>
	</tr>
<%
	request.setCharacterEncoding("UTF-8");
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String no = request.getParameter("no");
	
	try {
		String sql = "select * from notice where bo_no = ?";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			no = rs.getString("title");
			String title = rs.getString("title");
			String content = rs.getString("content");
			String writer = rs.getString("writer");
			String date = rs.getString("date");
			String hit = rs.getString("hit");
					
			// 가져온 아이디, 비밀번호, 이름을 차례 차례 출력해준다.
		%>
			<tr>
				<td><%=no %></td>
				<td><%=title %></td>
				<td><%=content %></td>
				<td><%=writer %></td>
				<td><%=date %></td>
				<td><%=hit%></td>
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
%>


<!-- 
	아래와 같이 출력하고, 수정 삭제 목록 기능을 작성해주세요.
	
	제목 : ~~~~~~~~~~~~~~~~~~~~
	작성자 : ~~~~~~~~~~~~~~~~~~~~
 	-----------------------------
 	내용 : ~~~~~~~~~~~~~~~~~~~~~~~
 	-----------------------------
 	[수정][삭제][목록]
 
 -->
 </table>
</body>
</html>