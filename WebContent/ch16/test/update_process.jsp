<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
<%
	request.setCharacterEncoding("UTF-8");

	String no = request.getParameter("no");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");
	
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	
	try {
		String sql = "update notice set BO_TITLE = ?, BO_CONTENT = ?, BO_WRITER  = ?, BO_DATE = sysdate where BO_NO = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, title);
				pstmt.setString(2, content);
				pstmt.setString(3, writer);
				pstmt.setString(4, no);
				pstmt.executeUpdate();
				out.println("BOARD 테이블을 수정했습니다.");
				response.sendRedirect("list.jsp");
	} catch(SQLException ex){
		out.println("SQLException : " + ex.getMessage());
	} finally {
		if(rs != null) {
			rs.close();
		}
		if(conn != null) {
			conn.close();
		}
		if(pstmt != null) {
			pstmt.close();
		}
	}
%>

</body>
</html>