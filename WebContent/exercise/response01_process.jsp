<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("id");
	String userPw = request.getParameter("pw");
	
	if (userId.equals("admin") && userPw.equals("1234")) {
		// 전송 받은 아이디와 비밀번호가 일치하면 성공 페이지로 전송(리다이렉트)
		response.sendRedirect("response01_success.jsp");
	} else {
		// 전송 받은 아이디와 비밀번호가 일치하지 않으면 실패페이지로 전송(리다이렉트)
		response.sendRedirect("response01_failed.jsp");
	}
	%>

</body>
</html>