<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function checkMember() {
	// 아이디는 영문 대문자와 소문자 한글, 한글의 자음과 모음만 검사하도록 정규 표현식 작성 
	var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;   
	// 비밀번호는 숫자만 검사하도록 정규 표현식을 작성
	var regExpPasswd = /^[0-9]*$/;
	// 이름은 한글만 검사하도록 정규 표현식 작성
	var regExpName = /^[가-힣]*$/;
	// 전화번호는 전화번호 형태(숫자)인지 검사하도록 정규 표현식 작성
	var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
	// 이메일은 이메일 형식인지 검사하도록 정규 표현식 작성
	// 처음 시작이 숫자, 영소대문자이고 특수문자 -_/. 나올수도 있고 난나올 수도 있고 그 다음에 숫자 영소대문자가 0개 이상 나온다
	// @ 이메일 형식과 같은 내용 이어서
	// \. 은 특수문자 .을 표현하기 위해서 이스케이프로 .이 반드시 나와야하고 영소대문자 2, 3자리가 끝에 나온다.
	var regExpEmail 
	= /^[0-9a-zA-Z]([-_/.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_/.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

	var form = document.member;
	
	var id = form.id.value;
	var pw = form.pw.value;
	var name = form.name.value;
	var phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
	var email = form.email.value;
	
	if(!regExpId.test(id)) {
		alert("아이디는 문자로 시작해주세요!");
		form.id.select();
		return false;
	}
	if(!regExpPasswd.test(pw)) {
		alert("비밀번호는 숫자만 입력해주세요!");
		form.pw.select();
		return false;
	}
	if(!regExpName.test(name)) {
		alert("이름은 한글만 입력해주세요!");
		form.name.select();
		return false;
	}
	if(!regExpPhone.test(phone)) {
		alert("연락처 형식에 맞게 입력해주세요!");
		return false;
	}
	if(!regExpEmail.test(email)) {
		alert("이메일 형식에 맞게 입력해주세요!");
		return false;
	}
	form.submit();
}
</script>
<body>
	<h3>회원가입</h3>
	<form action = "validation05_process.jsp" method =  "post" name = "member">
		아이디 : <input type = "text" name = "id"/><br/>
		비밀번호 : <input type = "text" name = "pw"/><br/>
		이름 : <input type = "text" name = "name"/><br/>
		연락처 : <select name = "phone1">
				<option value = "010">010</option>
				<option value = "011">011</option>
				<option value = "016">016</option>
				<option value = "017">017</option>
				<option value = "019">019</option>
			  </select>-
			  <input type = "text" name = "phone2" size="4" maxlength="4"/>-	
			  <input type = "text" name = "phone3" size="4" maxlength="4"/><br/>	
	 	    이메일  :<input type = "text" name = "email" /><br/>	
	 	<input type = "button" value="가입하기" onclick = "checkMember()"/><br/>	
	</form>
</body>
</html>