package com.routine.mapper;

import java.util.List;

import com.routine.domain.UserVO;

public interface MemberMapper {
	
	//show user info (only one)
	public UserVO read(String id);
	
	//show user info all(for admin)
	public List<UserVO> readAll();
	
}
