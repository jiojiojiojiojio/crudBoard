package com.jiocompany.crudBoard.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jiocompany.crudBoard.board.B_replyDTO;
import com.jiocompany.crudBoard.board.BoardDTO;
import com.jiocompany.crudBoard.board.BoardService;
import com.sun.tools.sjavac.Log;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardService service;
	
	// 게시글 전체 리스트 조회&페이징 처리
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String board(@RequestParam(required = false, defaultValue = "1")int page, Model model) throws Exception {
		logger.info("게시판 리스트!!");
		
		int totalCount=service.getBoardCount();
		int pageSize=10;
		int pageCount=(int)Math.ceil((double)totalCount/pageSize);
		int startRow=(page-1)*pageSize;
	
		List<BoardDTO> board = service.getBoardList(startRow, pageSize);
		model.addAttribute("board", board);
		model.addAttribute("currentPage", page);
		model.addAttribute("pageCount", pageCount);
		
		return "board";
	}

	// 게시글 작성 이동 폼
	@RequestMapping(value = "board/write", method = RequestMethod.GET)
	public String sel_write() {
		logger.info("게시글 작성!!");
		return "write";
	}
	
	// 게시글 작성 저장
	@RequestMapping(value = "board/write", method = RequestMethod.POST)
	public String sel_write(BoardDTO boardDTO, HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		logger.info("저장완료!");
		
		int r= service.write(boardDTO);
		
		return "redirect:/board"; 
	}
	
	// 게시글 상세보기 이동 폼
	@RequestMapping(value = "board/detail", method = RequestMethod.GET)
	public String detail(@RequestParam("b_no") int b_no, Model model) throws Exception {
		BoardDTO board = service.detail(b_no);
		model.addAttribute("board", board);

		logger.info("번호board>>>>>>>"+board);

		//댓글 전체 목록
		List<B_replyDTO> reply_list = service.reply_list(b_no);
		model.addAttribute("reply_list", reply_list);
		
		//게시글 조회 수 증가
		int b_readcnt=0;
		service.b_readcnt(b_no);
		model.addAttribute("b_readcnt", b_readcnt);
		
		return "detail";
	}
	
	
	// 게시글 수정 폼 이동 
	@RequestMapping(value = "board/update", method = RequestMethod.GET)
	public String update(@RequestParam("b_no") int b_no, Model model) throws Exception {
		logger.info("수정폼 이동");
		BoardDTO board = service.detail(b_no);
		model.addAttribute("board", board);
		logger.info("BoardDTO >>>>"+board);
		
		model.addAttribute("b_no", b_no);
		logger.info("bno>>>>>>"+b_no);
		
		return "update";
	}
	
	// 게시글 수정 저장 폼
	@RequestMapping(value = "board/update", method = RequestMethod.POST)
	public String update(BoardDTO boardDTO, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		logger.info("게시물 수정!!!!!!!");
		request.setCharacterEncoding("utf-8");
		int r=service.update(boardDTO);
		
		//수정에 성공한다면
		if(r>0) {
			rttr.addFlashAttribute("msg", "수정 성공");
			return "redirect:/board";
		}
		//수정 실패시 
		return "redirect:update?b_no="+boardDTO.getB_no();
	}
	
	//게시글 삭제
	@RequestMapping(value="board/delete", method = RequestMethod.GET)
	public String delete(@RequestParam("b_no") int b_no, RedirectAttributes rttr) throws Exception {
		int r=service.delete(b_no);
		
		//글 삭제 성공시
		if(r>0) {
			rttr.addFlashAttribute("msg", "글 삭제 성공");
			logger.info("글삭제 성공ㅇㅇㅇ");
			return "redirect:/board";
		}
		//글 삭제 실패시
		return "redirect:detail?b_no="+b_no;
	}
	
	// ajax 댓글 목록 불러오기
	@ResponseBody
	@RequestMapping(value="board/replylist", method = RequestMethod.POST)
	public List<B_replyDTO> replylist(@RequestParam("b_no") int b_no) throws Exception{
		return service.replylist(b_no);
	}
	
	//ajax 댓글 작성
	@ResponseBody
	@RequestMapping(value="board/reply", method = RequestMethod.POST)
	public int reply(B_replyDTO b_replyDTO) throws Exception {
		logger.info("breplydto>>"+b_replyDTO);
		return service.reply(b_replyDTO);
	}
	
	//ajax 댓글 수정
	@ResponseBody
	@RequestMapping(value="board/reply_update", method = RequestMethod.POST)
	public int reply_update(B_replyDTO b_replyDTO) throws Exception {
		logger.info("댓글 수정 dto>>"+b_replyDTO);
		return service.reply_update(b_replyDTO);
	}
	
	//ajax 댓글 삭제
	@ResponseBody
	@RequestMapping(value="board/reply_delete", method = RequestMethod.POST)
	public int reply_delete(@RequestParam("re_no") int re_no) throws Exception {
		logger.info("댓글 삭제할reno>>>"+re_no);
		return service.reply_delete(re_no);
	}
	
	//게시글 검색
	@RequestMapping(value = "/board", method = RequestMethod.POST)
	public ModelAndView boardSearch(@RequestParam("type")String type,
			@RequestParam("keyword") String keyword, Model model) throws Exception{
		logger.info("검색");
		
		ModelAndView mav = new ModelAndView();
		
		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setType(type);
		boardDTO.setKeyword(keyword);
		logger.info("타입>>"+type+"/ 키워드>>"+keyword);
		
		List<BoardDTO> board = service.boardSearch(boardDTO);
		mav.addObject("board", board);
		mav.setViewName("board");
		
		return mav;
	}
	
	
	
}
