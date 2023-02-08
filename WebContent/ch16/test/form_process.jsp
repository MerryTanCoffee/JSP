<%@page import="java.sql.SQLException"%>
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
<%
	request.setCharacterEncoding("UTF-8");

	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");

	PreparedStatement pstmt = null;
	
	try {
		String sql = "insert into notice(BO_NO, BO_TITLE, BO_CONTENT,BO_WRITER,BO_DATE,BO_HIT) values (" 
								+"seq_notice.nextval,?,?,?,sysdate,0)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, writer);
		pstmt.executeUpdate();
		out.println("NOTICE 테이블 삽입 성공");
		response.sendRedirect("list.jsp");
	} catch(SQLException ex){
		out.println("NOTICE 테이블 삽입 실패");
		out.println("SQLException : " + ex.getMessage());
	} finally {
		if(pstmt != null) {
			pstmt.close();
		}
		if(conn != null) {
			conn.close();
		}
	}
%>

</body>
</html>