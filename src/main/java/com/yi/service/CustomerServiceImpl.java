package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.CustomerVO;
import com.yi.persistence.CustomerDao;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao customerDao;
	
	@Override
	public List<CustomerVO> selectByAll() {
		return customerDao.selectByAll();
	}

	@Override
	public CustomerVO read(String userid, String userpw) {
		return customerDao.read(userid, userpw);
	}

}
