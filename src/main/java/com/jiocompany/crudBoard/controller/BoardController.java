package com.jiocompany.crudBoard.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.tools.sjavac.Log;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	// 게시글 리스트 조회
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String board() {
		logger.info("로그 설정 완료");
		
		return "board";
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
	public String detail() {

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
