package com.java.pilates.modules.member;

import java.util.List;

import org.springframework.stereotype.Service;


public interface MemberService {
	
	public int selectOneCount(MemberVo vo) throws Exception;
	public List<Member> selectList(MemberVo vo) throws Exception; 
	public int insert(Member dto) throws Exception;
	public Member selectOne(MemberVo vo) throws Exception;
	public int update(Member dto) throws Exception;
	
}