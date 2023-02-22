package com.jiocompany.crudBoard.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDAO dao;
	
	//게시글 전체 리스트 조회
	@Override
	public List<BoardDTO> board() throws Exception {
		return dao.board();
	}
	
	//게시글 작성
	@Override
	public int write(BoardDTO boardDTO) throws Exception {
		return dao.write(boardDTO);
	}

	//게시글 상세보기 
	@Override
	public BoardDTO detail(int b_no) throws Exception {
		return dao.detail(b_no);
	}

	//댓글 전체 목록
	@Override
	public List<B_replyDTO> reply_list(int b_no) throws Exception {
		return dao.reply_list(b_no);
	}

	//게시글 수정
	@Override
	public int update(BoardDTO boardDTO) throws Exception {
		return dao.update(boardDTO);
	}

	//게시글 삭제
	@Override
	public int delete(int b_no) throws Exception {
		return dao.delete(b_no);
	}

	



}
