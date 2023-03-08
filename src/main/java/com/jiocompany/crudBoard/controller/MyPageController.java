package com.jiocompany.crudBoard.controller;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jiocompany.crudBoard.board.BoardDTO;
import com.jiocompany.crudBoard.mypage.B_scrapDTO;
import com.jiocompany.crudBoard.mypage.MypageDTO;
import com.jiocompany.crudBoard.mypage.MypageService;

@Controller
public class MyPageController {
	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);

	@Autowired 
	MypageService service;
	
	//마이페이지 내 정보 조회
	@RequestMapping(value="/mypage", method = RequestMethod.GET)
	public ModelAndView mypage(HttpSession session) throws Exception{
		logger.info("내 정보 조회");
		
		ModelAndView mav = new ModelAndView();
		
		String u_id=(String) session.getAttribute("u_id");
		
		logger.info("session에 저장된 uid>>>>"+u_id);
		
		MypageDTO mypageDTO = service.mypage(u_id);
		
		mav.addObject("mypageDTO", mypageDTO);
		mav.setViewName("mypage");
		return mav;
	}
	
	//마이페이지 내 정보 수정 저장
	@RequestMapping(value="mypage/user_info", method = RequestMethod.POST)
	public String user_info(MypageDTO mypageDTO , HttpServletRequest request) throws Exception {
		logger.info("내 정보 수정 저장 이동");
		request.setCharacterEncoding("utf-8");
		int r = service.user_info(mypageDTO);
		
		//수정 성공시
		if(r>0) {
			return "redirect:/mypage?u_id="+mypageDTO.getU_id();
		}
		
		//수정 실패시
		logger.info("수정 실패ㅠㅠㅠ");
		return "user_info";
	}
	
	//회원 탈퇴
	@RequestMapping(value="/remove_user", method = RequestMethod.GET)
	public String remove_user(HttpSession session) throws Exception {
		logger.info("회원 탈퇴");
		
		String u_id=(String)session.getAttribute("u_id");

		int r = service.remove_user(u_id);
		
		//탈퇴 성공시
		if(r>0) {
			logger.info("탈퇴 성공");
			return "redirect:/";
		}
		//탈퇴 실패시
		return "redirect:/mypage?u_id="+u_id;
	}
	
	//스크랩 리스트 조회
	@RequestMapping(value="mypage/scrap_info", method = RequestMethod.GET)
	public ModelAndView scrap_info(HttpSession session) throws Exception {
		logger.info("스크랩한 글 리스트 조회");
		
		ModelAndView mav = new ModelAndView();
		String u_id=(String)session.getAttribute("u_id");
		logger.info("세션에 저장된 uid>>>"+u_id);
		
		List<B_scrapDTO> scrap_info = service.scrap_info(u_id);
		mav.addObject("scrap_info", scrap_info);
		mav.setViewName("scrap_info");
		
		return mav;
	}
	
	//스크랩 리스트 추가
	@RequestMapping(value="mypage/add_scrap", method = RequestMethod.GET)
	public String add_scrap() {
		
		return "scrap_info";
	}
	
	//내가 작성한 글 조회
	@RequestMapping(value="mypage/write_info", method = RequestMethod.GET)
	public ModelAndView write_info(HttpSession session) throws Exception {
		logger.info("내가 작성한 글 리스트 조회");
		
		ModelAndView mav = new ModelAndView();
		String u_id=(String)session.getAttribute("u_id");
		
		List<BoardDTO> write_info = service.write_info(u_id);
		mav.addObject("write_info", write_info);
		mav.setViewName("write_info");
		
		return mav;
	}
	
	
}
