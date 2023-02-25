package com.jiocompany.crudBoard.login;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDAO dao;

	//개인 로그인
	@Override
	public UserDTO login(Map<String, Object> map) {
		return dao.login(map);
	}

	//ID 찾기
	@Override
	public String find_id_result(Map<String, Object> map) {
		return dao.find_id_result(map);
	}

	//PW 찾기
	@Override
	public String find_pw_result(Map<String, Object> map) {
		return dao.find_pw_result(map);
	}
	
}
