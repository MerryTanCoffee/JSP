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
		tomcat-users.xml 에서 설정한 역할당 계정들 중, 
		인증을 진행 할 역할과 동일한 계정으로 인증시
		정산적인 요청 및 인증이므로 로그인이 진행될 수 있다.
		하지만, 인증을 진행할 역할과 다른 역할의 계정으로 인증시 403 Forbidden 에러로
		'엑세스 거부'가 출력된다.
		
		로그인 인증  처리르 위한  form 태그 작성
		-  폼 기반 인증을 처리하도록 action 속성 값을 j_security_check 로 작성
	 -->


	<form action = "j_security_check" method="post" name ="LoginForm">
		아이디 : <input type="text" name = "j_username"/><br/>
		비밀번호 : <input type="text" name = "j_password"/><br/>
		<input type="submit" value = "전송"/>
	</form>
</body>
</html>