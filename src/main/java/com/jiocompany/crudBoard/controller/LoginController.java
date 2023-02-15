package com.jiocompany.crudBoard.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
//	
//	@Autowired
//	LoginService service;
//	
//	@Inject
//	LoginDAOImpl dao;
	
	//로그인 폼 이동
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String getlogin() {
		
		return "login";
	}
	
	
//	//개인 로그인 처리 
//	@ResponseBody
//	@RequestMapping(value="/login", method=RequestMethod.POST)
//	public String login(@RequestParam Map<String, Object> map, HttpServletRequest request, HttpSession session, Model model) throws Exception {
//		logger.info("개인 로그인~~");
//		logger.info("map"+ map);
//		
//		request.setCharacterEncoding("utf-8");
//		
//		UserVO uservo = service.login(map);
//		logger.info("uservo"+uservo);
//		
//		if(uservo==null) {
//			logger.info("로그인 실패");
////			model.addAttribute("msg", "로그인 실패");
////			model.addAttribute("url", "/login");
//			return "login";
//		}
//		
//		session.setAttribute("u_id", uservo.getU_id());
//		session.setAttribute("u_pw", uservo.getU_pw());
//		session.setAttribute("UserVO", uservo);
//		
////		model.addAttribute("msg", "로그인 성공 : "+session.getAttribute("u_id"));
////		model.addAttribute("url", "/");
//		
//		logger.info("로그인 성공");
//		
//		return "home";
//	}
	
	//개인 로그인 처리 
	@ResponseBody
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String user_login() {
		return "";
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
