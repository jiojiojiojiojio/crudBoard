package com.jiocompany.crudBoard.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jiocompany.crudBoard.board.B_replyDTO;
import com.jiocompany.crudBoard.board.BoardDTO;
import com.jiocompany.crudBoard.board.BoardService;
import com.sun.tools.sjavac.Log;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardService service;
	
	// 게시글 전체 리스트 조회
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public ModelAndView board() throws Exception {
		logger.info("게시판 리스트!!");
		ModelAndView mav = new ModelAndView();
		
		List<BoardDTO> board = service.board();
		mav.addObject("board", board);
		mav.setViewName("board");
	
		return mav;
	}

	// 게시글 작성 이동 폼
	@RequestMapping(value = "board/write", method = RequestMethod.GET)
	public String sel_write() {

		return "write";
	}

	// 게시글 작성 저장
	@RequestMapping(value = "board/write", method = RequestMethod.POST)
	public String sel_write_post() {

		return "write";
	}

	// 게시글 상세보기 이동 폼
	@RequestMapping(value = "board/detail", method = RequestMethod.GET)
	public String detail(@RequestParam("b_no") int b_no, Model model) throws Exception {
		BoardDTO board = service.detail(b_no);
		model.addAttribute("board", board);

		//댓글 전체 목록
		List<B_replyDTO> reply_list = service.reply_list(b_no);
		model.addAttribute("reply_list", reply_list);
		
		return "detail";
	}

	// 게시글 수정 이동 폼
	@RequestMapping(value = "board/detail/update", method = RequestMethod.GET)
	public String update() {

		return "update";
	}

	// 게시글 수정 저장 폼
	@RequestMapping(value = "board/detail/update", method = RequestMethod.POST)
	public String postupdate() {

		return "update";
	}

}
