package com.jiocompany.crudBoard.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegisterController {
	private static final Logger logger = LoggerFactory.getLogger(RegisterController.class);

	//회원가입 폼 이동 
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public String getregister() {
		
		return "register";
	}
	
	//회원가입 폼 이동 
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String postregister() {
		
		return "register";
	}
	
}
