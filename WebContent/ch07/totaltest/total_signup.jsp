<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	문제2) 
	아이디, 비밀번호, 이름, 성별, 프로필 이미지를 입력받고 회원가입 할 수 있는 폼 양식을 작성하세요.
	
	아이디 name = mem_id
	비밀번호 name = mem_pw
	이름 name = mem_name
	성별 name = mem_sex
	프로필 이미지 name = filename
	
	버튼이름은 가입하기
	
	전송경로 : total_signup_process.jsp
 -->
	<form action="total_signup_process.jsp" method="post" enctype="multipart/form-data">
		<p>아이디 : <input type="text" name="mem_id"> </p>
		<p>비밀번호 : <input type="password" name="mem_pw"> </p>
		<p>이름 : <input type="text" name="mem_name"> </p>
		<p>성별 : <input type="text" name="mem_sex"> </p>
		<p>프로필 이미지 : <input type="file" name="filename"> </p>
		<input type="submit" value="가입하기">
	</form>
</body>
</html>