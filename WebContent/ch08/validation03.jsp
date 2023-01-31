<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type = "text/javascript">
$(function(){
	var loginBtn = $("#loginBtn");

	loginBtn.on("click",function(){
		var id2 = $("input[name=id2].val()")
		var pw2 = $("input[name=pw2].val()")
	
		if(form.id.value.length < 4 || form.id.value.length > 12) {
		alert("아이디는 4-12자 이내")
		form.id.select();
		return false;
		}
	
		if(form.pw.value.length < 4 ) {
			alert("비밀번호는 4자 이상")
			form.id.select();
			return false;
			}
		$("form[name=loginForm2]").submit();
	
	});
});

function CheckLogin() {
	var form = document.loginForm;
	
	if(form.id.value.length < 4 || form.id.value.length > 12) {
		alert("아이디는 4-12자 이내")
		form.id.select();
		return false;
	}
	
	if(form.pw.value.length < 4 ) {
		alert("비밀번호는 4자 이상")
		form.pw.select();
		return false;
	}
	form.submit();
}
</script>

<body>
	<h3>JavaScript 버전</h3>
	<form name = "loginForm" action = "validation03_process.jsp"
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