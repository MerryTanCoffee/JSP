<<%--<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 
	 	해당 페이지에서 아이디 비밀번호를 입력하고 filter02_process.jsp 로 요청했을 때
	 	Filter에 의해서 InitParmameterFilter 필터가 작동한다.
	 	입력한 아이디, 비밀번호가 admin/1234가 아닌 경우 web.xml 에 설정한 filter의 파라미터 값과 다르므로
	 	"로그인 실패" 가 함께 출려된다.
	 	
	 	정상적으로 admin/1234를 요청하면 "로그인 성공"
	 -->
	<form action="filter02_process.jsp" method = "post">
		아이디 : <input type = "text" name = "id"> 
		비밀번호 : <input type = "text" name = "pw"> 
	<input type ="submit" value = "전송"/> 
	</form>
</body>
</html>--%>