package com.java.pilates.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CodeController {
	
	@Autowired
	CodeServiceImpl service;           
                                                  //method= RequestMethod.POST->접근자체불가 
//	codeGroup                    //  이페이지까지는 GET방식이지만 검색은 POST라 검색안됨 method= RequestMethod.GET->405오류 접근은 가능하나 검색시 접근불가
	@RequestMapping(value = "/xdmin/code/codeGroupList") 
	public String codeGroupList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		//count가져올 것
		
		int count = service.selectOneCount(vo);
		
		vo.setParamsPaging(count);
		
		//count가 0이 아니면 list가져오는 부분 수행 후 model 개체에 담기
		if(count!=0) {
			List<Code> list = service.selectList(vo);
			model.addAttribute("list", list);
			
			List<Code> listCodeGroup = service.selectList(vo);
			model.addAttribute("listCodeGroup", listCodeGroup);
		}else {
			//by pass
		}
		
		return "xdmin/code/codeGroupList";
	}
	
	@RequestMapping(value = "/xdmin/code/codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo")CodeVo vo) throws Exception {
		//List<Code> listCodeGroup  = service.selectList(vo);
		
		//model.addAttribute("listCodeGroup", listCodeGroup );
		
		
		return "xdmin/code/codeGroupForm";
	}
	@RequestMapping(value = "/xdmin/code/codeGroupInst")
	public String codeGroupInst(CodeVo vo,Code dto, RedirectAttributes redirectAttributes ) throws Exception {
		System.out.println("dto.getPilcgSeq():"+ dto.getPilcgSeq());
		
		//입력실행
		service.insert(dto);
		
		System.out.println("dto.getPilcgSeq():"+ dto.getPilcgSeq());
		//return "redirect:/code/codeGroupView";
		redirectAttributes.addAttribute("pillcgSeq",dto.getPilcgSeq());//get
		redirectAttributes.addAttribute("thisPage",vo.getThisPage());//get
		redirectAttributes.addAttribute("shOption",vo.getShOption());//get
		redirectAttributes.addAttribute("shValue",vo.getShValue());//get
		
		return "redirect:/code/codeGroupView";
		//return "redirect:/xdmin/code/codeGroupView?pilcgSeq="+ dto.getPilcgSeq()+makeQueryString(vo);
	}
	
	public String makeQueryString(CodeVo vo) {
		String tmp = "&thisPage="+ vo.getThisPage()
					+"&shOption="+ vo.getShOption() 
					+"&shValue="+ vo.getShValue();
		
		return tmp;
	}
	@RequestMapping(value = "/xdmin/code/codeGroupView")
	public String codeGroupView(@ModelAttribute("vo")CodeVo vo, Model model) throws Exception {
		System.out.println(" vo.getThisPage()" + vo.getThisPage());
		System.out.println(" vo.getShOption():"+  vo.getShOption());
		System.out.println("vo.getShValue():"+  vo.getShValue());
		System.out.println("vo.getpilcgSeq():"+  vo.getPilcgSeq());
		
		//디비까지 가서 한 건의 데이터 값을 가지고 온다,VO
		Code rt = service.selectOne(vo);
		
		//가지고 온 값을 jsp로 넘겨준다
		model.addAttribute("item", rt);
		
		return "xdmin/code/codeGroupView";
	}
	
	@RequestMapping(value = "/xdmin/code/codeGroupForm2")
	public String codeGroupForm2(@ModelAttribute("vo")CodeVo vo, Model model) throws Exception {
		
		//디비까지 가서 한 건의 데이터값을 가지고 온다. 	
		Code rt = service.selectOne(vo);
		
		//가지고 온 값을 jsp로 넘겨준다
		model.addAttribute("item", rt);
		
		return "xdmin/code/codeGroupForm2";
	}
	@RequestMapping(value = "/xdmin/code/codeGroupUpdt")
	public String codeGroupUpdt(@ModelAttribute("vo")CodeVo vo,Code dto, RedirectAttributes redirectAttributes) throws Exception {
	
		//수정프로세스 실행
		service.update(dto);
		return "redirect:/xdmin/code/codeGroupView?pilcgSeq="+dto.getPilcgSeq()
		+ makeQueryString(vo);
	}
	@RequestMapping(value = "/xdmin/code/codeGroupDele")
	public String codeGroupDele(CodeVo vo,RedirectAttributes redirectAttributes ) throws Exception {
	
		service.delete(vo);
		
	
		redirectAttributes.addAttribute("thisPage",vo.getThisPage());//get
		redirectAttributes.addAttribute("shOption",vo.getShOption());//get
		redirectAttributes.addAttribute("shValue",vo.getShValue());//get
		
		return "redirect:/xdmin/code/codeGroupList/";
	
	}
	@RequestMapping(value = "/xdmin/code/codeGroupNele")
	public String codeGroupNele(CodeVo vo,RedirectAttributes redirectAttributes ) throws Exception {
		
		service.updateDelete(vo);
		
		
		redirectAttributes.addAttribute("thisPage",vo.getThisPage());//get
		redirectAttributes.addAttribute("shOption",vo.getShOption());//get
		redirectAttributes.addAttribute("shValue",vo.getShValue());//get
		
		return "redirect:/xdmin/code/codeGroupList/";
		
	}
	
//	code---------------------------------------------------------------
	@RequestMapping(value = "/xdmin/code/codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
			
		int count = service.selectOneCountCode(vo);
	
		vo.setParamsPaging(count);
		
		if(count!=0) {
			
			List<Code> list = service.selectListCode(vo);
			model.addAttribute("list", list);
			
			List<Code> listCodeGroup = service.selectList(vo);
			model.addAttribute("listCodeGroup", listCodeGroup);			 
		}else {
			//by pass
		}

		return "xdmin/code/codeList";
	}


	@RequestMapping(value = "/xdmin/code/codeForm")
	public String codeForm(CodeVo vo, Model model) throws Exception {
		
		List<Code> list = service.selectListCode(vo);
		model.addAttribute("list", list);
		
		List<Code> listCodeGroup = service.selectList(vo);
		model.addAttribute("listCodeGroup", listCodeGroup);
		
		return "/xdmin/code/codeForm";
	}

	@RequestMapping(value = "/xdmin/code/codeInst")
	public String codeInst(Code dto) throws Exception {

		service.insertCode(dto);
		return "redirect:/xdmin/code/codeList";
	}

	@RequestMapping(value = "/xdmin/code/codeView")
	public String codeView(CodeVo vo, Model model) throws Exception {
		
		Code rt = service.selectOneCode(vo);
		
		model.addAttribute("item", rt);
		
		return "xdmin/code/codeView";
	}
	
	@RequestMapping(value = "/xdmin/code/codeForm2")
	public String codeEditForm(CodeVo vo, Model model) throws Exception {
		
		Code rt = service.selectOneCode(vo);
		
		model.addAttribute("item", rt);
		
		return "xdmin/code/codeForm2";
	}
	@RequestMapping(value = "/xdmin/code/codeUpdt")
	public String codeUpdt(Code dto) throws Exception {
		
		service.updateCode(dto);
		return "redirect:/xdmin/code/codeView?pilcdSeq="+dto.getPilcdSeq();
	}
	
	
}
