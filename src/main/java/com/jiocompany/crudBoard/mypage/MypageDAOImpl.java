package com.jiocompany.crudBoard.mypage;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}
