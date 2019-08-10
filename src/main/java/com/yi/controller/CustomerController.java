package com.yi.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.CustomerVO;
import com.yi.service.CustomerService;

@Controller
@RequestMapping("/customer/*")
public class CustomerController {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerController.class);
	
	@Autowired
	private CustomerService service;
	
	@RequestMapping(value="list", method=RequestMethod.GET)
	public void list(Model model) {
		logger.info("list===========");
		List<CustomerVO> list = service.selectByAll();
		model.addAttribute("list", list);
	}
}
