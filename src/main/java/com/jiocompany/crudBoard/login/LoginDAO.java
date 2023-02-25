package com.jiocompany.crudBoard.login;

import java.util.Map;

public interface LoginDAO {
	
	//개인 로그인
	public UserDTO login(Map<String, Object> map);
	
	//ID 찾기
	public String find_id_result(Map<String, Object> map);
	
	//PW 찾기
	public String find_pw_result(Map<String, Object> map);
}
