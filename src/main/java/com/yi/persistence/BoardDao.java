package com.yi.persistence;

import java.util.List;

import com.yi.domain.BoardVO;

public interface BoardDao {
	
	public List<BoardVO> selectByAll();

}
