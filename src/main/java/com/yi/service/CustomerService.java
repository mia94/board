package com.yi.service;

import java.util.List;

import com.yi.domain.CustomerVO;

public interface CustomerService {

	public List<CustomerVO> selectByAll();
	public CustomerVO read(String userid, String userpw);
}
