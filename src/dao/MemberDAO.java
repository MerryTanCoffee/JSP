package dao;

import java.util.ArrayList;

import dto.MemberVO;

public class MemberDAO{
	
	private ArrayList<MemberVO> memberList = new ArrayList<MemberVO>();
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public ArrayList<MemberVO> getMemberList() {
		return memberList;
	}

	public void insertMember(MemberVO member) {
		memberList.add(member);
	}
	
	 
	// 내가 추가
	public MemberVO getMemberById (String memId) {
		
		MemberVO memberById = null;
		
		for(int i = 0; i < memberList.size(); i++) {
			MemberVO member = memberList.get(i);
			
			if (member != null && member.getMem_id() != null 
					&& member.getMem_id().equals(memId)) {
				memberById = member;
				break;
			}
		}
		
		return memberById;
		
	}

}
