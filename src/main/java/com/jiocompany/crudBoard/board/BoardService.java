package com.jiocompany.crudBoard.board;

import java.util.List;

public interface BoardService {

	//게시글 전체 리스트 조회
	public List<BoardDTO> board() throws Exception;
	
	//게시글 상세보기 
	public BoardDTO detail(int b_no) throws Exception;
}
