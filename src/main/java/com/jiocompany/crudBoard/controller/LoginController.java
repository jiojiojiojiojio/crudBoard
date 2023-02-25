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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
		logger.info("id찾기 폼이동");
		return "find_id";
	}
	
	//id 찾기 결과 폼 이동 및 결과
	@RequestMapping(value="login/find_id/find_id_result", method = RequestMethod.POST)
	public ModelAndView find_id_result(@RequestParam Map<String, Object> map) {
		String returnid="";
		logger.info("post findid");
		logger.info("map"+map.toString());
		
		ModelAndView mav = new ModelAndView();
		
		String u_name = (String)map.get("u_name");
		String u_number = (String) map.get("u_number");
		
		map.remove("u_name", u_name);
		map.remove("u_number", u_number);
		
		map.put("u_name", u_name);
		map.put("u_number", u_number);
		logger.info("map>>>"+map.toString());
		
		returnid = service.find_id_result(map);
		logger.info("returnid>>>>>>>>"+returnid);
		mav.addObject("returnid", returnid);
		logger.info("returnid222>>>>>>>>"+returnid);
		mav.setViewName("find_id_result");
		
		return mav;
	}
	
	//pw 찾기 폼 이동 
	@RequestMapping(value="login/find_pw", method = RequestMethod.GET)
	public String find_pw() {
		logger.info("pw찾기!!");
		return "find_pw";
	}
	
	//pw 찾기 결과 폼 이동 
	@RequestMapping(value="login/find_pw/find_pw_result", method = RequestMethod.POST)
	public ModelAndView find_pw_result(@RequestParam Map<String, Object> map) {
		logger.info("pw결과 폼 이동!");
		
		String returnpw="";
		logger.info("pwmap"+map.toString());
		
		ModelAndView mav = new ModelAndView();
		
		String u_id=(String) map.get("u_id");
		String u_name=(String) map.get("u_name");
		String u_number=(String) map.get("u_number");
		
		map.remove("u_id", u_id);
		map.remove("u_name", u_name);
		map.remove("u_number", u_number);
		
		map.put("u_id", u_id);
		map.put("u_name", u_name);
		map.put("u_number", u_number);
		logger.info("map"+map.toString());
		
		returnpw=service.find_pw_result(map);
		mav.addObject("returnpw", returnpw);
		logger.info("returnpw>>>"+returnpw);
		
		mav.setViewName("find_pw_result");
		return mav;
	}
	
}
