package com.yi.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.CustomerVO;

@Repository
public class CustomerDaoImpl implements CustomerDao {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.yi.mapper.CustomerMapper";
	
	@Override
	public List<CustomerVO> selectByAll() {
		return sqlSession.selectList(namespace+".selectByAll");
	}

	@Override
	public CustomerVO read(String userid, String userpw) {
		Map<String, String> map = new HashMap<>();
		map.put("userid", userid);
		map.put("userpw", userpw);
		return sqlSession.selectOne(namespace+".read", map);
	}

}
