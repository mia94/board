package com.yi.persistence;

import java.util.List;

import com.yi.domain.CustomerVO;

public interface CustomerDao {

	public List<CustomerVO> selectByAll();
	public CustomerVO read(String userid, String userpw);
}
