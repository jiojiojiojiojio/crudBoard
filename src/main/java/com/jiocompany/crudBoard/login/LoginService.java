package com.jiocompany.crudBoard.login;

import java.util.Map;

public interface LoginService {
	
	//개인 로그인
	public UserDTO login(Map<String, Object> map);
}
