package com.routine.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.routine.domain.UserVO;
import com.routine.mapper.MemberMapper;
import com.routine.mapper.UserMapper;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class UserServiceImpl implements UserService{
	

	private UserMapper mapper;
	private MemberMapper mapper2;
	
	@Override
	public void register(UserVO userVO){
		mapper.insert(userVO);
	}
	
	public void registerAuth(String id) {
		mapper.insertAuth(id);
	}
	
	public List<UserVO> showAll() {
		return mapper2.readAll();
	}

}