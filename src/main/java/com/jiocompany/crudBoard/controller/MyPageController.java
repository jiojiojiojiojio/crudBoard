package com.jiocompany.crudBoard.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyPageController {
	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);

	//마이페이지 내 정보 조회
	@RequestMapping(value="/mypage", method = RequestMethod.GET)
	public String mypage() {
		
		return "mypage";
	}
	
	//마이페이지 내 정보 수정
	@RequestMapping(value="mypage/user_info", method = RequestMethod.GET)
	public String user_info() {
		
		return "user_info";
	}
	
	//마이페이지 내 정보 수정 저장
	@RequestMapping(value="mypage/user_info", method = RequestMethod.POST)
	public String user_info_post() {
		
		return "user_info";
	}
	
	//스크랩 리스트 조회
	@RequestMapping(value="mypage/scrap_info", method = RequestMethod.GET)
	public String scrap_info() {
		
		return "scrap_info";
	}
	
	//스크랩 리스트 추가
	@RequestMapping(value="mypage/add_scrap", method = RequestMethod.GET)
	public String add_scrap() {
		
		return "scrap_info";
	}
	
	//내가 작성한 글 조회
	@RequestMapping(value="mypage/write_info", method = RequestMethod.GET)
	public String write_info() {
		
		return "write_info";
	}
	
	
}
