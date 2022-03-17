package com.java.pilates.modules.member;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller

public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/xdmin/member/memberList")

	public String memberList(MemberVo vo,Model model) throws Exception {
		
			int count = service.selectOneCount(vo);
			
			vo.setParamsPaging(count);
			
			if(count != 0) {
				List<Member> list = service.selectList(vo);
				model.addAttribute("list", list);
			}else { 
			
			}
			model.addAttribute("vo",vo); 
		return "xdmin/member/memberList";
	}


}
