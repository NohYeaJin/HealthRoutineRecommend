package com.routine.service;

import org.springframework.stereotype.Service;

import com.routine.domain.UserVO;
import com.routine.mapper.UserMapper;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class UserServiceImpl implements UserService{
	

	private UserMapper mapper;
	
	@Override
	public void register(UserVO userVO){
		mapper.insert(userVO);
	}
	
	public void registerAuth(String id) {
		mapper.insertAuth(id);
	}

}