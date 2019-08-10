package com.yi.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.CustomerVO;
import com.yi.domain.LoginDTO;
import com.yi.service.CustomerService;

@Controller
@RequestMapping("/user/*")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private CustomerService service;
	
	@RequestMapping(value="loginPost", method=RequestMethod.POST)
	public void loginPost(String userid, String userpw, Model model) {
		logger.info("loginPost  -------------- ");
		//read함수만들기
		CustomerVO vo = service.read(userid, userpw);
		logger.info("loginPost  -------------- " +vo);
		if(vo==null) {
			logger.info("loginPost null  -------------- ");
			return;
		}
		LoginDTO dto = new LoginDTO();
		dto.setUsername(vo.getUsername());
		dto.setUserid(vo.getUserid());
		dto.setEmail(vo.getEmail());
		System.out.println("=============dto 확인용  :  "+dto);
		model.addAttribute("customerVO", dto);
	}
}























