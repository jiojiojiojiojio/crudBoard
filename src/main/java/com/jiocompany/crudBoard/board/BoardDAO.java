package com.jiocompany.crudBoard.board;

import java.util.List;

public interface BoardDAO {
	
	//게시글 전체 리스트 조회
	public List<BoardDTO> board() throws Exception;
}
