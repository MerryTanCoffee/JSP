<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	
	// 숫자만 입력하되, 7-12 자리까지만 입력
	var regExpQuest1 = /^[0-9]{7,12}$/;
	
	// 시작은 영소문자 a,b,c 이고 영소대문자 8-12자리까지만 입력
	var regExpQuest2 = /^[abc][a-zA-z]{7,12}$/;
	
	// 아이디는 영소문자로 시작하고 영소문자, 숫자 8-16자 설정
	var regExpId = /^[a-z]([a-z0-9]){7,15}$/;
	
	// 비밀번호는 영대문자로 시작하고 영문 대소문자, 숫자, 특수문자 8-16자로 설정
	var regExpPw = /^[A-Z][^ㄱ-힣]{7,15}$/;
	
	// 이름은 한글 2-5자로 설정
	var regExpName = /^[ㄱ-힣]{2,5}$/;
	
	// 핸드폰 번호의 첫번째 자리는 011,016,017,019,070,010 으로 시작하고 
	//두번째 자리는 숫자 3자리 또는 숫자 4자리로 시작하고
	//세번째 자리는 숫자 4자리로 설정해주세요
	var regExpPhone = /^(010|011|016|017|019|070)-[\d]{3,4}-[\d]{4}$/;

	
	$("#quest1").focusout(function(){
	      if(!regExpQuest1.test($("#quest1").val())){
	         $("#err_quest1").html("숫자만 입력하되, 7-12자리까지만 입력 받을 수 있게 설정해주세요.");
	         $("#err_quest1").css("color", "red");
	         return;
	      }else{
	         $("#err_quest1").html("정상");
	         $("#err_quest1").css("color", "green");
	      }
	   });
	$("#quest2").focusout(function(){
	      if(!regExpQuest2.test($("#quest2").val())){
	         $("#err_quest2").html("시작은 영소문자 a,b,c 이고 영소대문자 8-12자리까지만 입력");
	         $("#err_quest2").css("color", "red");
	         return;
	      }else{
	         $("#err_quest2").html("정상");
	         $("#err_quest2").css("color", "green");
	      }
	   });
	$("#mem_id").focusout(function(){
	      if(!regExpId.test($("#mem_id").val())){
	         $("#err_Id").html("숫자만 입력하되, 7-12자리까지만 입력 받을 수 있게 설정해주세요.");
	         $("#err_Id").css("color", "red");
	         return;
	      }else{
	         $("#err_Id").html("정상");
	         $("#err_Id").css("color", "green");
	      }
	   });
	

	
	
	$("#frm").submit(function(event){
		event.preventDefault();
		
		if(!regExpQuest1.test($("#quest1").val())){
			$("#err_quest1").html("숫자만 입력하되, 7-12 자리까지만 입력");
			$("#quest1").focus();
			return false;
		};
		if(!regExpQuest2.test($("#quest2").val())){
			$("#err_quest2").html("시작은 영소문자 a,b,c 이고 영소대문자 8-12자리까지만 입력");
			$("#quest2").focus();
			return false;
		};
		if(!regExpId.test($("#mem_id").val())){
			$("#err_id").html("아이디는 영소문자로 시작하고 영소문자, 숫자 8-16자 설정");
			$("#mem_id").focus();
			return false;
		};
		if(!regExpPW.test($("#mem_pw").val())){
			$("#err_pw").html("비밀번호는 영대문자로 시작하고 영문 대소문자, 숫자, 특수문자 8-16자로 설정");
			$("#mem_pw").focus();
			return false;
		};
		if(!regExpName.test($("#mem_name").val())){
			$("#err_name").html("이름은 한글 2-5자로 설정");
			$("#mem_name").focus();
			return false;
		};
		if(!regExpPhone.test($("#mem_phone").val())){
			$("#err_phone").html(" 핸드폰 번호는 연락처 형식에 맞춰 설정");
			$("#mem_phone").focus();
			return false;
		}
		$("#success").html("통과하셨습니다.");
	});
});
</script>
<style>
p{
	font-size:9px;
	
}

#success{
	color :green;
}
</style>
<body>
	<!-- 
		문제 풀어보기
		아래 정규식을 풀어보고 통과 했다면 ch08_test_process.jsp로 전송하여 결과를 출력해주세요. 
	-->
	<form id="frm" action="./ch08_test_process.jsp" method="post">
		<h4>숫자만 입력하되, 7-12자리까지만 입력 받을 수 있게 설정해주세요.</h4>
		<input type="text" id="quest1" name="quest1"/>
		<p id="err_quest1"></p>
		<br/>	
		
		<h4>시작은 영소문자 a,b,c고 영소대문자 8-12자리까지만 입력 받을 수 있게 설정해주세요.</h4>
		<input type="text" id="quest2" name="quest2"/>
		<p id="err_quest2"></p>
		<br/>	
		
		<h4>아이디는 영소문자로 시작하고 영소문자,숫자  8~16자로 설정해주세요.</h4>
		<input type="text" id="mem_id" name="mem_id"/>
		<p id="err_id"></p>
		<br/>	

		<h4>비밀번호는 영대문자로 시작하고 영문 대 소문자, 숫자, 특수문자  8~16자로 설정해주세요.</h4>
		<input type="text" id="mem_pw" name="mem_pw"/>
		<p id="err_pw"></p>
		<br/>

		<h4>이름은 한글 2-5글자로 설정해주세요.</h4>
		<input type="text" id="mem_name" name="mem_name"/>
		<p id="err_name"></p>
		<br/>
		
		<h4>
		핸드폰 번호의 첫번째 자리는 011,016,017,019,070,010 으로 시작하고 <br/>
		두번째 자리는 숫자 3자리 또는 숫자 4자리로 시작하고<br/>
		세번째 자리는 숫자 4자리로 설정해주세요.<br/>
		예시) 010-1234-1234, 016-123-1234
		</h4>
		<input type="text" id="mem_phone" name="mem_phone"/>
		<p id="err_phone"></p>
		<br/>
		
		<p id="success"></p>
		
		<input type="submit" id="sendBtn" value="전송"/>
	</form>
</body>
</html>