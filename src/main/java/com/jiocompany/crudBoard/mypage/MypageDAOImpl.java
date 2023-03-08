package com.jiocompany.crudBoard.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jiocompany.crudBoard.board.BoardDTO;

@Repository
public class MypageDAOImpl implements MypageDAO{

	@Autowired
	private SqlSession sqlSession; 
	
	static final String namespace = "com.jiocompany.crudBoard.mypageMapper";

	//마이페이지 내 정보 조회
	@Override
	public MypageDTO mypage(String u_id) throws Exception {
		return sqlSession.selectOne(namespace+".mypage", u_id);
	}

	//마이페이지 내 정보 수정
	@Override
	public int user_info(MypageDTO mypageDTO) throws Exception {
		return sqlSession.update(namespace+".user_info", mypageDTO);
	}

	//회원탈퇴
	@Override
	public int remove_user(String u_id) throws Exception {
		return sqlSession.delete(namespace+".remove_user", u_id);
	}

	// 스크랩 리스트 조회
	@Override
	public List<B_scrapDTO> scrap_info(String u_id) throws Exception {
		return sqlSession.selectList(namespace+".scrap_info", u_id);
	}

	//내가 작성한 글 조회
	@Override
	public List<BoardDTO> write_info(String u_id) throws Exception {
		return sqlSession.selectList(namespace+".write_info", u_id);
	}
}
