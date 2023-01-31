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
		1)
		ch07_test.jsp에 프로필 이미지, 아이디, 비밀번호, 이름, 연락처, 성별, 소개를 입력
		받는 폼을 작성
		
		2) ch07_test_process.jsp로 입력한 데이터를 전송
	 -->
	 <form action="ch07_test_process.jsp" method="post" enctype="multipart/form-data">
		<p>프로필 이미지 : <input type="file" name="profile" id="file"></p>
		<p>
			아이디 : <input type="text" name="id"> 
			<input type="button" value="아이디 중복검사">
		</p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<p>이름 : <input type="text" name="name"></p>
		<p>
			연락처 : <select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select> -
			<input type="text" name="phone2" maxlength="4" size="4"> - 
			<input type="text" name="phone3" maxlength="4" size="4">   
		</p>
		<p>
			성별 : <input type="radio" name="sex" value="남성" checked>남성
			<input type="radio" name="sex" value="여성">여성   
		</p>
		<p>
	         취미: 독서 <input type="checkbox" value="독서" name="hobby" checked/>
	            운동 <input type="checkbox" value="운동" name="hobby"/>
	            영화 <input type="checkbox" value="영화" name="hobby"/>
            
        </p>
        <p>
        	<textarea name="comment" rows="3" cols="30" wrap="soft" placeholder="소개글을 입력해주세요."></textarea>
        </p>
        <p>
	         <input type="submit" value="가입하기"/>
	         <input type="reset" value="다시쓰기"/>
		</p>
	</form>	 
</body>
<script type="text/javascript">

</script>

</html>










