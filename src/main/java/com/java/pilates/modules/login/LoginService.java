package com.java.pilates.modules.login;

import java.util.List;

import org.springframework.stereotype.Service;


public interface LoginService {
	
	public int selectOneCount(LoginVo vo) throws Exception;
	public List<Login> selectList(LoginVo vo) throws Exception; 
	public int insert(Login dto) throws Exception;
	public Login selectOne(LoginVo vo) throws Exception;
	public int update(Login dto) throws Exception;
	
}