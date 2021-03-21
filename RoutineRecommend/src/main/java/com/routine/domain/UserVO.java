package com.routine.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class UserVO {
	 
	private int member_num;
	private String id;
	private String password;
	private String userName;
	private Date joinDateTime;
	private List<AuthVO> authList;
	
}
