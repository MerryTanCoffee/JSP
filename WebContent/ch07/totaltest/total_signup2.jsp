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

	<form action="total_signup_process.jsp" method="post"
		enctype="multipart/form-data">
		<div class="form-row">
			<label class="col-sm-2">아이디</label>
			<div class="col-sm-3">
				<input type="text" name="mem_id" class="form-control">
			</div>
		</div><br/>
		<div class="form-row">
			<label class="col-sm-2">비밀번호</label>
			<div class="col-sm-3">
				<input type="text" name="mem_pw" class="form-control">
			</div>
		</div><br/>
		<div class="form-row">
			<label class="col-sm-2">이름</label>
			<div class="col-sm-3">
				<input type="text" name="mem_name" class="form-control">
			</div>
		</div><br/>
		<div class="form-row">
			<label class="col-sm-2">성별</label>
			<div class="col-sm-3">
				여자<input type="radio" name="mem_sex"  class="form-control">
				남자<input type="radio" name="mem_sex"  class="form-control">
			</div>
		</div><br/>
		<div class="form-row">
			<label class="col-sm-2">프로필 이미지</label>
			<div class="col-sm-3">
				<input type="file" name="filename" class="form-control">
			</div>
		</div><br/>
		<div class="form-group row">
			<div class="col-sm-offset-2 col-sm-10 ">
				<input type="submit" class="btn btn-primary" value="등록">
			</div>
		</div>
	</form>
</body>
</html>