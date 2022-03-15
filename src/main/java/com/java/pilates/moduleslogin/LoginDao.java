package com.java.pilates.moduleslogin;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.java.pilates.moduleslogin.Login;
import com.java.pilates.moduleslogin.LoginVo;


public class LoginDao {
	

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.modules.login.LoginMpp";
	

	public List<Login> selectList(LoginVo vo){
		List<Login> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
}
