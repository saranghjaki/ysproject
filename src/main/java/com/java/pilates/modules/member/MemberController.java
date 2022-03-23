package com.java.pilates.modules.member;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;




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
				
				
				
			}else { 
			
			}
			//model.addAttribute("vo",vo); 
		return "xdmin/member/memberList";
	}
	/* memberform */
	
	@RequestMapping(value = "/xdmin/member/memberForm")
	public String memberForm(@ModelAttribute("vo")MemberVo vo, Model model) throws Exception {
		
		//List<Member> listMember = service.selectList(vo);
		
		//model.addAttribute("listMember", listMember);
		
		
		return "xdmin/member/memberForm";
	}
	@RequestMapping(value = "/xdmin/member/memberInst")
		public String memberInst(MemberVo vo,Member dto,RedirectAttributes redirectAttributes) throws Exception {
	
		service.insert(dto);
			
		redirectAttributes.addAttribute("pilmmSeq",dto.getPilmmSeq());//get
		redirectAttributes.addAttribute("thisPage",vo.getThisPage());//get
		redirectAttributes.addAttribute("shOption",vo.getShOption());//get
		redirectAttributes.addAttribute("shValue",vo.getShValue());//get
		
		return "redirect:/xdmin/member/memberView";
	}
		public String makeQueryString(MemberVo vo) {
			String tmp = "&thisPage="+ vo.getThisPage()
						+"&shOption="+ vo.getShOption() 
						+"&shValue="+ vo.getShValue();
			
			return tmp;
	}
	@RequestMapping(value = "/xdmin/member/memberView")
	public String MemberView(@ModelAttribute("vo")MemberVo vo, Model model) throws Exception{
		System.out.println("vo.getPilcdSeq"+vo.getSeq());
		
		Member rt= service.selectOne(vo);
		
		model.addAttribute("item", rt);
		
		return "xdmin/member/memberView";
	}
	@RequestMapping(value = "/xdmin/member/memberForm2")
	public String MemberForm2(@ModelAttribute("vo")MemberVo vo, Model model) throws Exception{
		
		// 한건의 데이터를 가져옴
		Member  rt= service.selectOne(vo);
		
		model.addAttribute("item",  rt);
		
		return "/xdmin/member/memberForm2";
	}
	@RequestMapping(value = "/xdmin/member/memberUpdt")
	public String memberUpdt(@ModelAttribute("vo")MemberVo vo,Member dto) throws Exception{
		
		
		service.update(dto);
		
		;
		return "redirect:/xdmin/member/memberView?pilmmSeq="+dto.getPilmmSeq()
		+ makeQueryString(vo);
	}
	@RequestMapping(value = "/xdmin/member/memberDele")
	public String codeGroupDele(MemberVo vo,RedirectAttributes redirectAttributes ) throws Exception {
	
		service.delete(vo);
		
	
		redirectAttributes.addAttribute("thisPage",vo.getThisPage());//get
		redirectAttributes.addAttribute("shOption",vo.getShOption());//get
		redirectAttributes.addAttribute("shValue",vo.getShValue());//get
		
		return "redirect:/xdmin/member/memberList/";
	
	}
	@RequestMapping(value = "/xdmin/member/memberNele")
	public String codeGroupNele(MemberVo vo,RedirectAttributes redirectAttributes ) throws Exception {
		
		service.updateDelete(vo);
		
		
		redirectAttributes.addAttribute("thisPage",vo.getThisPage());//get
		redirectAttributes.addAttribute("shOption",vo.getShOption());//get
		redirectAttributes.addAttribute("shValue",vo.getShValue());//get
		
		return "redirect:/code/codeGroupList/";
		
	}
}

