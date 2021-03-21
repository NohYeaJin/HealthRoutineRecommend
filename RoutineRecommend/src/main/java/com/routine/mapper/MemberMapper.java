package com.routine.mapper;

import com.routine.domain.UserVO;

public interface MemberMapper {
	
	//회원 정보 출력 (특정 회원의 정보만)
	public UserVO read(String id);
	
	//회원 정보 출력 (모든 회원 정보 - 관리자 페이지용)
	public UserVO readAll();
	
}
