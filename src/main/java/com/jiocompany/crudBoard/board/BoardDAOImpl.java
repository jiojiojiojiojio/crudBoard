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
		return sqlSession.selectList(namespace + ".board");
	}

	//게시글 작성
	@Override
	public int write(BoardDTO boardDTO) throws Exception {
		return sqlSession.insert(namespace+".write", boardDTO);
	}

	//게시글 상세보기 
	@Override
	public BoardDTO detail(int b_no) throws Exception {
		return sqlSession.selectOne(namespace+".detail", b_no);
	}

	//댓글 전체 목록
	@Override
	public List<B_replyDTO> reply_list(int b_no) throws Exception {
		return sqlSession.selectList(namespace+".reply_list", b_no);
	}

	//게시글 수정
	@Override
	public int update(BoardDTO boardDTO) throws Exception {
		return sqlSession.update(namespace+".update", boardDTO);
	}

	//게시글 삭제
	@Override
	public int delete(int b_no) throws Exception {
		return sqlSession.delete(namespace+".delete", b_no);
	}

	//ajax 댓글 목록 불러오기
	@Override
	public List<B_replyDTO> replylist(int b_no) throws Exception {
		return sqlSession.selectList(namespace+".reply_list", b_no);
	}

	//ajax 댓글 작성
	@Override
	public int reply(B_replyDTO b_replyDTO) throws Exception {
		return sqlSession.insert(namespace+".reply", b_replyDTO);
	}

	//ajax 댓글 수정
	@Override
	public int reply_update(B_replyDTO b_replyDTO) throws Exception {
		return sqlSession.update(namespace+".reply_update", b_replyDTO);
	}

	
	
	



}
