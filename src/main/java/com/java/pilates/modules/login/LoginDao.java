package com.java.pilates.modules.login;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.java.pilates.modules.login.Login;
import com.java.pilates.modules.login.LoginVo;

@Repository
public class LoginDao {
	

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.java.pilates.modules.login.LoginMpp";

	public int selectOneCount(LoginVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	public List<Login> selectList(LoginVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	public int insert(Login dto){ 	return sqlSession.insert(namespace + ".insert", dto);}
	public Login selectOne(LoginVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo);}
	public int update(Login dto){return sqlSession.update(namespace + ".update", dto);}

}
