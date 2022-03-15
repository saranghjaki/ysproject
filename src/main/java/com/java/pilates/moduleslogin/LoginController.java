package com.java.pilates.moduleslogin;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.java.pilates.moduleslogin.LoginController;
import com.java.pilates.moduleslogin.Login;
import com.java.pilates.moduleslogin.LoginServiceImpl;
import com.java.pilates.moduleslogin.LoginVo;

@Controller

public class LoginController {

	@Autowired
	LoginServiceImpl service;
	
	@RequestMapping(value = "/xdmin/login/login", method = RequestMethod.GET)

	public String memberList(LoginVo vo,Model model) throws Exception {
		
		List<Login> list = service.selectList(vo);
		model.addAttribute("list", list);  
		return "xdmin/login/login";
	}


}
