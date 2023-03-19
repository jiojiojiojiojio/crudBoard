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

	//ajax 댓글 목록 불러오기
	@Override
	public List<B_replyDTO> replylist(int b_no) throws Exception {
		return dao.replylist(b_no);
	}

	// ajax 댓글 작성
	@Override
	public int reply(B_replyDTO b_replyDTO) throws Exception {
		return dao.reply(b_replyDTO);
	}

	//ajax 댓글 수정
	@Override
	public int reply_update(B_replyDTO b_replyDTO) throws Exception {
		return dao.reply_update(b_replyDTO);
	}

	//ajax 댓글 삭제
	@Override
	public int reply_delete(int re_no) throws Exception {
		return dao.reply_delete(re_no);
	}

	//게시글 조회 수 증가
	@Override
	public int b_readcnt(int b_no) throws Exception {
		return dao.b_readcnt(b_no);
	}

	//게시글 검색
	@Override
	public List<BoardDTO> boardSearch(BoardDTO boardDTO) throws Exception {
		return dao.boardSearch(boardDTO);
	}

	//게시글 페이징 처리
	@Override
	public List<BoardDTO> getBoardList(int startRow, int pageSize) throws Exception {
		return dao.getBoardList(startRow, pageSize);
	}

	//게시글 총개수
	@Override
	public int getBoardCount() throws Exception {
		return dao.getBoardCount();
	}
	
	
}
