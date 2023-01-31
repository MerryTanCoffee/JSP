<%@page import="dto.MemberVO"%>
<%@page import="java.util.ArrayList"%>
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
	로그인 처리를 진행해주세요.
	
	MemberDAO 클래스를 작성하고 싱글턴 패턴을 적용 후, 
	- 회원 전체 리스트를 가져올 수 있는 함수를 작성하세요.
	- 회원 아이디,비밀번호에 해당하는 회원 정보를 가져올 수 있는 함수를 작성하세요.
	
	1) 로그인 성공 시, total_memberList.jsp로 이동시켜주세요.
	2) 로그인 실패 시, total_signin.jsp로 이동시켜주세요.
 -->
<%
	// 1. 로그인 페이지에서 전송한 아이디, 비밀번호를 받는다.
	String id = request.getParameter("mem_id");
	String pw = request.getParameter("mem_pw");
	
	// 2. 전달받은 아이디, 비밀번호에 해당하는 내 정보가 있는지 없는지 체크.
	// - 회원 데이터 전부를 요청해야한다.
	// - 회원 데이터 전부와 전달받은 아이디, 비밀번호를 비교한다.
	// - 회원 데이터 전부를 가져오기 위해 DAO한테 요청
	// - DAO 인스턴스가 필요하다.
	// - DAO 인스턴스를 통해 회원 데이터 전부를 가져오기 위한 기능 요청
	MemberDAO dao = MemberDAO.getInstance(); // dao 인스턴스 얻어오기
	ArrayList<MemberVO> memberList = dao.getMemberList(); // 회원 전체 들고 오기.
	
	// 회원전체와 전달받은 아이디, 비밀번호를 비교
	if(memberList.size() > 0){ // 회원 목록 데이터가 존재
		// 회원정보 존재 스위치
		boolean flag = false;
	
		for(MemberVO mv : memberList){
			
			if(id.equals(mv.getMem_id()) && pw.equals(mv.getMem_pw())){
				// 일치하는 회원이 존재	
				flag = true; // 회원정보가 존재.
				break; // for문 끝냄.
			}
		}
		
		if(flag){
			// 회원 존재

			// redirect를 사용해서 attribute를 전달할 수 없음. list페이지에서
			// dao로 직접 가져와야 하나. session에 넣기.
			session.setAttribute("id", id);
			
			session.setAttribute("list", memberList);
			
			response.sendRedirect("./total_memberList.jsp");
		}else{
			// 회원 존재 X
			request.setAttribute("msg", "로그인 실패");
			
			request.getRequestDispatcher("./total_signin.jsp").forward(request, response);
		}
	}else{ // 데이터 존재하지 않음
		// 에러 처리
		request.setAttribute("msg", "로그인 실패");
		
		request.getRequestDispatcher("./total_signin.jsp").forward(request, response);
	}
%>
</body>
</html>

 