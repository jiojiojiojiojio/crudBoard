package com.jiocompany.crudBoard.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSession sqlSession;
	
	static final String namespace = "com.jiocompany.crudBoard.boardMapper";
	
	//게시글 전체 리스트 조회
	@Override
	public List<BoardDTO> board() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".board");
	}

}
