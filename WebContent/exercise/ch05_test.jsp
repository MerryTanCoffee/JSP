<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>

	<form action = "ch05_test_process.jsp" method="post">
		<p> 아이디 : <input type="text" name = "id"/></p>
		<p> 비밀번호 : <input type="text" name = "pw"/></p>
		<p> 이름 : <input type = "text" name = "name" /></p>
		<p> 성별 : <input type = "text" name = "sex" /></p>
		<p> 핸드폰번호 : <input type = "text" name = "hp" /></p>
		<p> 주소 : <input type = "text" name = "addr" /></p>
		<p><input type = "submit" value = "전송"/></p> 
	</form>
</body>
</html>