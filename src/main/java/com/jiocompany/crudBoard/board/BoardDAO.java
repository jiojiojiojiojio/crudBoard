package com.jiocompany.crudBoard.board;

import java.util.List;

public interface BoardDAO {
	
	//게시글 전체 리스트 조회
	public List<BoardDTO> board() throws Exception;
	
	//게시글 작성
	public int write(BoardDTO boardDTO) throws Exception;
	
	//게시글 상세보기 
	public BoardDTO detail(int b_no) throws Exception;
	
	//댓글 전체 목록
	public List<B_replyDTO> reply_list(int b_no) throws Exception;
}
