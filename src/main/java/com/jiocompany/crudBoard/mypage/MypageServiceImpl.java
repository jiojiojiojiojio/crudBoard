package com.jiocompany.crudBoard.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MypageServiceImpl implements MypageService{

	@Autowired
	MypageDAO dao;

	//마이페이지 내 정보 조회
	@Override
	public MypageDTO mypage(String u_id) throws Exception {
		return dao.mypage(u_id);
	}

	//마이페이지 내 정보 수정
	@Override
	public int user_info(MypageDTO mypageDTO) throws Exception {
		return dao.user_info(mypageDTO);
	}
	
	
}
