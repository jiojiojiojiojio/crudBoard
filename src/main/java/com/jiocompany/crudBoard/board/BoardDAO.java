package com.jiocompany.crudBoard.board;

import java.util.List;

public interface BoardDAO {

	// 게시글 전체 리스트 조회
	public List<BoardDTO> board() throws Exception;

	// 게시글 작성
	public int write(BoardDTO boardDTO) throws Exception;

	// 게시글 상세보기
	public BoardDTO detail(int b_no) throws Exception;

	// 댓글 전체 목록
	public List<B_replyDTO> reply_list(int b_no) throws Exception;

	// 게시글 수정
	public int update(BoardDTO boardDTO) throws Exception;

	// 게시글 삭제
	public int delete(int b_no) throws Exception;

	// ajax 댓글 목록 불러오기
	public List<B_replyDTO> replylist(int b_no) throws Exception;

	// ajax 댓글 작성
	public int reply(B_replyDTO b_replyDTO) throws Exception;

	// ajax 댓글 수정
	public int reply_update(B_replyDTO b_replyDTO) throws Exception;

	// ajax 댓글 삭제
	public int reply_delete(int re_no) throws Exception;

	// 게시글 조회 수 증가
	public int b_readcnt(int b_no) throws Exception;

	// 게시글 검색
	public List<BoardDTO> boardSearch(BoardDTO boardDTO) throws Exception;

	// 게시글 페이징 처리
	public List<BoardDTO> getBoardList(int startRow, int pageSize) throws Exception;

	// 게시글 총개수
	public int getBoardCount() throws Exception;
}
