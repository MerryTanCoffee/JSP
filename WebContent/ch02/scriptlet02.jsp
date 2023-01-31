<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<h2>스크립틀릿 태그</h2>
	<%
	// 0부터 10까지 중 짝수만 보여줌
	
		for(int i=0; i<=10; i++) {
			if(i % 2 == 0) {
				out.println(i + "<br/>");
			}
		}
	%>
</body>
</html>