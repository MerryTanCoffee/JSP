<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type = "text/javascript">
$(function(){
	var loginBtn = $("#loginBtn");
	
	loginBtn.on("click", function(event){
		event.preventDefault();
		
		var id = $("input[name=id2]").val();
		var pw = $("input[name=pw2]").val();
	
		if (id == null || id == "") {
			alert("아이디를 입력하길");
			$("input[name=id2]").focus();
			
		} 
		if (pw == null || pw == ""){
			alert("비밀번호를 입력하길");
			$("input[name=pw2]").focus();
		}
		$("form[name=loginForm2]").submit();
	
})
function CheckLogin() {
	var form = document.loginForm;
	
	// 아이디가 입력되었는지 검사합니다.
	// 아이디가 입력되지 않으면 오류 메세지를 출력하고 해당 입력 항목에 커서가 놓인다.
	if(form.id.value == "") {
		alert("아이디를 입력해주세요.");
		form.id.focus();
		return false;
		
	// 비밀번호가 입력되었는지 검사한다.
	// 비밀번호가 입력되지 않으면 오류 메세지를 출력하고 해당 입력 항목에 커서가 놓인다.
	} else if (form.pw.value == "") {
		alert("비밀번호를 입력해주세요.");
		form.pw.focus();
		return false;
	}
	
	// 폼 페이지에서 입력한 데이터 값을 서버로 전송합니다.
	form.submit();
}
</script>
<body>
	<h3>JavaScript 버전</h3>
	<form name = "loginForm" action = "validation02_process.jsp"
		 method="post">
		아이디 : <input type = "text" name = "id" /><br/>
		비밀번호 : <input type = "text" name = "pw" /><br/>
		<input type = "button" value = "전송" onclick = "CheckLogin()"/>
	</form>
	
	<h3>Jquery 버전</h3>
		<form name = "loginForm2" action = "validation02_process.jsp"
		 method="post">
	아이디 : <input type = "text" name = "id2" /><br/>
	비밀번호 : <input type = "text" name = "pw2" /><br/>
	<input type = "submit" value = "전송" id = "loginBtn"/>
	</form>
</body>
</html>