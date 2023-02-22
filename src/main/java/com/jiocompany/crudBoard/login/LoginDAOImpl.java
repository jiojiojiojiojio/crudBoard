package com.jiocompany.crudBoard.login;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDAOImpl implements LoginDAO{

	@Autowired
	private SqlSession sqlSession;
	
	static final String namespace = "com.jiocompany.crudBoard.loginMapper";

	//개인 로그인 
	@Override
	public UserDTO login(Map<String, Object> map) {
		return sqlSession.selectOne(namespace+".login", map);
	}
	


}
