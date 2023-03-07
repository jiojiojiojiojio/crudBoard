package com.jiocompany.crudBoard.mypage;

public interface MypageDAO {
	
	//마이페이지 내 정보 조회
	public MypageDTO mypage(String u_id) throws Exception;
	
	//마이페이지 내 정보 수정
	public int user_info(MypageDTO mypageDTO) throws Exception;
	
	//회원 탈퇴
	public int remove_user(String u_id) throws Exception;
}
