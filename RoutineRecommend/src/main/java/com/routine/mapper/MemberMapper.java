package com.routine.mapper;

import com.routine.domain.UserVO;

public interface MemberMapper {
	
	//ȸ�� ���� ��� (Ư�� ȸ���� ������)
	public UserVO read(String id);
	
	//ȸ�� ���� ��� (��� ȸ�� ���� - ������ ��������)
	public UserVO readAll();
	
}
