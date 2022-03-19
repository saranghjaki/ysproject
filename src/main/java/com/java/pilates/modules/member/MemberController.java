package com.java.pilates.modules.member;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller

public class MemberController {

	@Autowired
	MemberServiceImpl service;

	/* memberList */
	@RequestMapping(value = "/xdmin/member/memberList")

	public String memberList(@ModelAttribute("vo")MemberVo vo,Model model) throws Exception {
		
			int count = service.selectOneCount(vo);
			
			vo.setParamsPaging(count);
			
			if(count != 0) {
				List<Member> list = service.selectList(vo);
				model.addAttribute("list", list);
				
				List<Member> listMember = service.selectList(vo);
				model.addAttribute("listMember", listMember);
				
			}else { 
			
			}
			model.addAttribute("vo",vo); 
		return "xdmin/member/memberList";
	}
	/* memberform */
	
	@RequestMapping(value = "/xdmin/member/memberForm")
	public String memberForm(MemberVo vo, Model model) throws Exception {
		List<Member> listMember = service.selectList(vo);
		
		model.addAttribute("listMember", listMember);
		
		
		return "xdmin/member/memberForm";
	}
	@RequestMapping(value = "/xdmin/member/memberInst")
	public String memberInst(Member dto) throws Exception {
		service.insert(dto);
		return "redirect:/xdmin/member/memberList";
	
	}
}
