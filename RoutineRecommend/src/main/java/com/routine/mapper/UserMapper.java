package com.routine.mapper;

import com.routine.domain.UserVO;

public interface UserMapper {

	public void insert(UserVO userVO);
	
	public void insertAuth(String id);

}
