package com.java.pilates.moduleslogin;

import java.util.List;

public interface LoginService {

	public List<Login> selectList(LoginVo vo) throws Exception; 

	
}