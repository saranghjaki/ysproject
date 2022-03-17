package com.java.pilates.modules.login;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.pilates.modules.login.Login;
import com.java.pilates.modules.login.LoginVo;




@Controller

public class LoginController {

	@Autowired
	LoginServiceImpl service;
	
	@RequestMapping(value = "/xdmin/login/login")

	public String login(LoginVo vo,Model model) throws Exception {
		
			int count = service.selectOneCount(vo);
			
			vo.setParamsPaging(count);
			
			if(count != 0) {
				List<Login> list = service.selectList(vo);
				model.addAttribute("list", list);
			}else { 
			
			}
			model.addAttribute("vo",vo); 
		return "xdmin/login/login";
	}


}
