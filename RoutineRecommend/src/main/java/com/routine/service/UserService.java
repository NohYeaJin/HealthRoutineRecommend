package com.routine.service;

import java.util.List;

import com.routine.domain.AuthVO;
import com.routine.domain.UserVO;

public interface UserService {

	public void register(UserVO userVO);
	public void registerAuth(String id);
	public List<UserVO> showAll();
	public int checkid(String id);
}
