package com.java.pilates.modules.login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	LoginDao dao;

	@Override
	public int selectOneCount(LoginVo vo) throws Exception {
		
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Login> selectList(LoginVo vo) throws Exception {
		
		return dao.selectList(vo); 
	}

	@Override
	public int insert(Login dto) throws Exception {
		
		return dao.insert(dto);
	}

	@Override
	public Login selectOne(LoginVo vo) throws Exception {
		
		return dao.selectOne(vo);
	}

	@Override
	public int update(Login dto) throws Exception {
		
		return dao.update(dto);	
	}


	
	
}

