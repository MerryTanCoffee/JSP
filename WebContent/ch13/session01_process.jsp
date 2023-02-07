<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	
	if(id.equals("admin") && pw.equals("1234")) {
		session.setAttribute("userId", id);
		session.setAttribute("userPw", pw);
	
		out.println("세션 설정 완료");
		out.println(id + "님 환영합니다.");
	
	}	else {
		out.println("세션 설정 실패");
	}
%>