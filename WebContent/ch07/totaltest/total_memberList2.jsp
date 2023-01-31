<%@page import="dto.MemberVO"%>
<%@page import="dao.MemberDAO"%>
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
	문제1) 로그인 성공하여 회원 목록 페이지로 넘어올 때, 
	'아이디'님 환영합니다! 알림창을 띄워주세요.
	문제1)
	회원가입을 통해 가입한 회원들의 목록 전부를 가져와서 
	아래 테이블을 채워주세요.
	
	전체 목록 출력을 core태그를 이용하여 작성해주세요.
	회원목록이 없는 경우 "조회하실 회원정보가 존재하지 않습니다."를 출력해주세요
	회원목록이 있는 경우 목록 전체를 출력해주세요.
	- 출력은 core 태그들을 이용해서 출력해주세요.
	
	문제2)			
 -->

	<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("mem_id");
	String realFolder = request.getServletContext().getRealPath("/resources/images");
	// request.getSession().setAttribute("id", id);
	MemberDAO dao = MemberDAO.getInstance();
	MemberVO member = dao.getMemberById(id);
	%>

	<div class="container">
		<div class="row">

			<div class="col-md-6">
				<h3>
					아이디 :
					<%=member.getMem_id()%></h3>
				<p>
					이름 :
					<%=member.getMem_name()%></p>

				<p>
					<b>성별 :</b><%=member.getMem_sex()%></p>


				<div class="col-md-5">
					<img
						src="${pageContext.request.contextPath }/resources/images/<%=member.getFilename() %>"
						style="width: 100%;" />
				</div>
			</div>
		</div>
	</div>
</body>
</html>