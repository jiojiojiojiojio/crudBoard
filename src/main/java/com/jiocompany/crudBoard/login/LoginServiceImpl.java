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

}
