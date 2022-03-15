package com.java.pilates.moduleslogin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	LoginDao dao;

	@Override
	public List<Login> selectList(LoginVo vo) throws Exception {
				return dao.selectList(vo);
	}
	

	
	
}

