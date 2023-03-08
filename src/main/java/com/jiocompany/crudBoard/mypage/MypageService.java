package com.jiocompany.crudBoard.mypage;

import java.util.List;

import com.jiocompany.crudBoard.board.BoardDTO;

public interface MypageService {

	//마이페이지 내 정보 조회
	public MypageDTO mypage(String u_id) throws Exception;
	
	//마이페이지 내 정보 수정
	public int user_info(MypageDTO mypageDTO) throws Exception;
	
	//회원 탈퇴
	public int remove_user(String u_id) throws Exception;
	
	//스크랩 리스트 조회
	public List<B_scrapDTO> scrap_info(String u_id) throws Exception;
	
	//스크랩 리스트 추가
	
	
	//내가 작성한 글 조회
	public List<BoardDTO> write_info(String u_id) throws Exception;
}
