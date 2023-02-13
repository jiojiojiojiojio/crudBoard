package com.jiocompany.crudBoard.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	//로그인 폼 이동
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login() {
		
		return "login";
	}
	
	//id 찾기 폼 이동 
	@RequestMapping(value="login/find_id", method = RequestMethod.GET)
	public String find_id() {
		
		return "find_id";
	}
	
	//id 찾기 결과 폼 이동 
	@RequestMapping(value="login/find_id/find_id_result", method = RequestMethod.POST)
	public String find_id2() {
		
		return "find_id_result";
	}
	
	//pw 찾기 폼 이동 
	@RequestMapping(value="login/find_pw", method = RequestMethod.GET)
	public String find_pw() {
		
		return "find_pw";
	}
	
	//pw 찾기 결과 폼 이동 
		@RequestMapping(value="login/find_pw/find_pw_result", method = RequestMethod.POST)
		public String find_pw_result() {
			
			return "find_pw_result";
		}
	
	
}
