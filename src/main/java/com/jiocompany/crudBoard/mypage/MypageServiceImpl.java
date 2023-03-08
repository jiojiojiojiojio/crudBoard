package com.jiocompany.crudBoard.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiocompany.crudBoard.board.BoardDTO;

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

	//회원탈퇴
	@Override
	public int remove_user(String u_id) throws Exception {
		return dao.remove_user(u_id);
	}

	//스크랩 리스트 조회
	@Override
	public List<B_scrapDTO> scrap_info(String u_id) throws Exception {
		return dao.scrap_info(u_id);
	}

	//내가 작성한 글 조회
	@Override
	public List<BoardDTO> write_info(String u_id) throws Exception {
		return dao.write_info(u_id);
	}
	
	
}
