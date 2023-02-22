package com.jiocompany.crudBoard.controller;

import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jiocompany.crudBoard.login.LoginService;
import com.jiocompany.crudBoard.login.UserDTO;

@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	LoginService service;
//	
//	@Inject
//	LoginDAOImpl dao;
	
	//개인 로그인 폼 이동
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login() {
		logger.info("로그인 폼 이동");
		return "login";
	}
	
	//개인 로그인 처리 dto
	@RequestMapping(value="/logincheck", method = RequestMethod.POST)
	public String login(@RequestParam Map<String, Object> map, HttpServletRequest request, HttpServletResponse response
			, HttpSession session) throws Exception {
		
		logger.info("로그인 처리..");
		logger.info("map==>"+ map);
		
		request.setCharacterEncoding("utf-8");

		UserDTO userDTO = service.login(map);
		logger.info("userDTO>>"+userDTO);
		
		if(userDTO==null) {
			logger.info("로그인 실패");
			return "redirect:login";
		}else {
			logger.info("로그인 성공");

			session.setAttribute("u_id", userDTO.getU_id());
			session.setAttribute("u_pw", userDTO.getU_pw());
			
			logger.info("session에 저장된 uid>>"+session.getAttribute("u_id"));
			logger.info("session에 저장된 upw>>"+session.getAttribute("u_pw"));
			
			return "redirect:/";
		}
		
	}
	
	//로그아웃
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
//	//개인 로그인 처리 map
//	@RequestMapping(value="/logincheck", method = RequestMethod.POST)
//	public String login(@RequestParam Map<String, Object> map, HttpServletRequest request, HttpServletResponse response
//			, HttpSession session) throws Exception {
//		
//		logger.info("로그인 처리..");
//		
//		request.setCharacterEncoding("utf-8");
//	
//		Map user = service.login(map);
//
//		if(user==null) {
//			logger.info("로그인 실패");
//			return "redirect:login";
//		}else {
//			session.setAttribute("user", user);
//			logger.info("로그인 성공");
//			logger.info("user>>>>"+user);
//			return "redirect:/";
//		}
//		
//	}

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
