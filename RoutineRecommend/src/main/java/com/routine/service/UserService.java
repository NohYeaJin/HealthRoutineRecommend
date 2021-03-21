package com.routine.service;

import com.routine.domain.AuthVO;
import com.routine.domain.UserVO;

public interface UserService {

	public void register(UserVO userVO);
	public void registerAuth(String id);

}
