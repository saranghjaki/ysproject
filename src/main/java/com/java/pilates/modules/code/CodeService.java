package com.java.pilates.modules.code;
                                  
import java.util.List;

public interface CodeService {
	
	public int selectOneCount(CodeVo vo) throws Exception;
	public List<Code> selectList(CodeVo vo) throws Exception; 
	public int insert(Code dto) throws Exception;
	public Code selectOne(CodeVo vo) throws Exception;
	public int delete(CodeVo vo) throws Exception;
	public int updateDelete(CodeVo vo) throws Exception;
	int update(Code dto) throws Exception;
	
	/* CODE S */
	public int selectOneCountCode(CodeVo vo) throws Exception;
	public List<Code> selectListCode(CodeVo vo) throws Exception; 
	public int insertCode(Code dto) throws Exception;
	public Code selectOneCode(CodeVo vo) throws Exception;
	public int updateCode(Code dto) throws Exception;
	
	
	
}