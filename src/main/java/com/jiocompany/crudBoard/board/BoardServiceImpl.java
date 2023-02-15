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

}
