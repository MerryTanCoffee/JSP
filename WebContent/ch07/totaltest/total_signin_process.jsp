<%@page import="dto.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
 	request.setCharacterEncoding("UTF-8");
 	String id = request.getParameter("mem_id");
 	String pw = request.getParameter("mem_pw");
 	String msg = null;
 	
 	// 2. 전달받은 아이디, 비밀번호에 해당하는 내 정보가 있는지 없는지 체크
 	// - 회원 데이터 전부를 요청해야한다.
 	// - 회원 데이터 전부와 전달받은 아이디, 비밀번호를 비교한다.
 	// - 회원 데이터 전부를 가져오기 위해 DAO한테 요청
 	// - DAO 인스턴스 필요
 	// - DAO 인스턴스를 통해 회원 데이터 전부를 가져오기 위한 기능 요청
 	
 	MemberDAO dao = MemberDAO.getInstance(); // DAO 인스턴스 얻어오기
 	ArrayList<MemberVO> memberList = dao.getMemberList(); // DAO 인스턴스에서 회원 전체 들고오기
 	
 	
 	// 회원 전체와 전달받은 아이디, 비밀번호를 비교
 	if(memberList.size() > 0){ // 회원 목록 데이터가 존재하면
 		// '회원정보가 존재할때? 존재하지 않을때?'에 해당하는 스위칭
 		boolean flag = false;
 	
 		for(MemberVO memberVO : memberList){
 			if(id.equals(memberVO.getMem_id()) && pw.equals(memberVO.getMem_pw())){
 				flag = true;   // 회원정보가 존재
 				break;
 			}
 		}
 		if(flag){ // 회원정보가 존재하면
 			msg = id + "님! 환영합니다.";
 		
 			session.setAttribute("msg", msg);
 			session.setAttribute("mem_id", id);
 			response.sendRedirect("./total_memberList.jsp");
 		}else{
 			
 			msg = "존재하지 않는 회원입니다.";
 			request.setAttribute("msg", msg);
 			request.getRequestDispatcher("./total_signin.jsp").forward(request, response);
 		}
 	}else{			// 회원 목록 데이터가 존재하지 않음.
 			msg = "존재하지 않는 회원입니다.";
 			request.setAttribute("msg", msg);
 			request.getRequestDispatcher("./total_signin.jsp").forward(request, response);
 		
 	}

 	
 %>