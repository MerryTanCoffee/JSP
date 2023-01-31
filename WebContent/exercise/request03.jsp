<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<ul>
		<li>
			<h3>*** 웹 브라우저의 IP 주소를 가져옴</h3>
		</li>

		<li>
			<h3>클라이언트 IP : 웹 브라우저의 IP 주소를 가져옵니다. <br/></h3>
			<%=request.getRemoteAddr() %>
		</li>

		<li>
			<h3>요청 정보 길이 : 웹 브라우저의 요청 파라미터 길이를 가져옵니다.<br/></h3>
			<%=request.getContentLength() %>
		</li>
	
		<li>
			<h3>요청 정보 인코딩 : 웹 브라우저의 문자 인코딩을 가져옵니다.<br/></h3>
			<%=request.getCharacterEncoding() %>
		</li>
	
		<li>
			<h3>요청 정보 콘텐츠 유형 : 웹 브라우저의  콘텐츠 유형을 가져옵니다.<br/></h3>
			<%=request.getContentType() %>
		</li>
	
		<li>
			<h3>요청 정보 프로토콜 : 웹 브라우저의 요청 프로토콜을 가져옵니다.<br/></h3>
			<%=request.getProtocol() %>
		</li>
	
		<li>
			<h3>요청 정보 전송방식 : 웹 브라우저의  HTTP 요청 메소드(Get,Post)를 가져옵니다.<br/></h3>
			<%=request.getMethod() %>
		</li>
	
		<li>
			<h3>요청 URI : 웹 브라우저가 요청한 URI 경로를 가져옵니다.<br/></h3>
			<%=request.getRequestURI() %>
		</li>
	
		<li>
			<h3>컨텍스트 경로 : 현재 JSP 페이지의 웹 애플리케이션 컨텍스트 경로를 가져옵니다.<br/></h3>
			<%=request.getContextPath() %>
		</li>
	
		<li>
			<h3>서버이름 : 서버 이름을 가져옵니다.<br/></h3>
			<%=request.getServerName() %>
		</li>
	
		<li>
			<h3>서버포트 : 실행 중인 서버 포트 번호를 가져옵니다.<br/></h3>
			<%=request.getServerPort() %>
		</li>
	
		<li>
			<h3>쿼리문(QeuryString) : 웹 브라우저의 전체 요청 파라미터 문자열
			[물음표(?) 다음 URL에 할당된 문자열]을 가져옵니다.<br/></h3>
			<%=request.getQueryString() %>
		</li>
	
	</ul>
</body>
</html>