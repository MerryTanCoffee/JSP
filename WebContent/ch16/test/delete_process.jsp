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
	<%@include file = "../dbconn.jsp" %>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String no = request.getParameter("no");
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	
	try {
	
		String sql = "delete from notice where BO_NO = ? and BO_TITLE like ? and BO_WRITER like ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		pstmt.setString(2, title);
		pstmt.setString(3, writer);
		pstmt.executeUpdate();
		out.println("board 테이블을 삭제했습니다.");
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