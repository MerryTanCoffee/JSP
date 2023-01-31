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
	
	// 변수에 그 공간을 넣어줌<- 달러 부분은 공간을 받고							
	$(function() {
	var submitBtn = $("#submitBtn");	
	var loginForm2 = $("#loginForm2");	
	
	// 방법 3
	loginForm2.submit(function(event){
		event.preventDefault(); // 이벤트 처리를 막는다.
		console.log("submit 이벤트 발동 안함.");
		alert("아이디  :" + $("input[name=id2]").val()+ "\n"+
					"비밀번호 :" + $("input[name=pw2]").val());
	}); 
	
	
		
//		// 방법 2
//		submitBtn.on("click", function(event){
//			event.preventDefault(); // 이벤트 처리를 막는다.
//			console.log("submit 이벤트 작동 안함.");
//			alert("아이디  :" + $("input[name=id2]").val()+ "\n"+
//					"비밀번호 :" + $("input[name=pw2]").val());
//		});
		
//		
//		// 방법1 : 이걸 추가 해야지 실행됨
//		submitBtn.on("click",CheckFormJquery);
//		
//		// 시점이 달라서 실행이 안됨
//		// 코드는 위에서 아래로 왼쪽에서 오른 쪽으로 읽어짐
//		function CheckFormJquery() {
//			alert("아이디  :" + $("input[name=id2]").val()+ "\n"+
//			"비밀번호 :" + $("input[name=pw2]").val());
//		}	
	});
	
	function CheckForm() {
		alert("아이디 :" + document.loginForm.id.value + "\n"
			+ "비밀번호 :" + document.loginForm.pw.value + "\n");
	}

</script>
<body>
	<h3>JavaScript 버전</h3>
	<form name = "loginForm">
		아이디 : <input type = "text" name = "id" /><br/>
		비밀번호 : <input type = "text" name = "pw" /><br/>
		<input type = "submit" value = "전송" onclick = "CheckForm()"/>
	</form>
	
	<h3>Jquery 버전</h3>
	<form name = "loginForm2" id = "loginForm2">
	아이디 : <input type = "text" name = "id2" /><br/>
	비밀번호 : <input type = "text" name = "pw2" /><br/>
	<input type = "submit" value = "전송" id = "submitBtn" "/>
	</form>
</body>
</html>