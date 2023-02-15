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

}
