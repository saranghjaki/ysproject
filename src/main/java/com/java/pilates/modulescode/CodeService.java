package com.java.pilates.modulescode;

import java.util.List;

public interface CodeService {

	public List<Code> selectList(CodeVo vo) throws Exception; 
	public int insert(Code dto) throws Exception;
	public Code selectOne(CodeVo vo) throws Exception;
	public int update(Code dto) throws Exception;
	
	/* CODE S */
	public List<Code> selectListCode(CodeVo vo) throws Exception; 
	public int insertCode(Code dto) throws Exception;
	public Code selectOneCode(CodeVo vo) throws Exception;
	public int updateCode(Code dto) throws Exception;
	
	
}