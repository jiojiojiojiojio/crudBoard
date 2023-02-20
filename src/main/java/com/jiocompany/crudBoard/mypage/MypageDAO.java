package com.jiocompany.crudBoard.mypage;

public interface MypageDAO {
	
	//마이페이지 내 정보 조회
	public MypageDTO mypage(String u_id) throws Exception;
}
