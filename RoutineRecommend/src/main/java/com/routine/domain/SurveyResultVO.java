package com.routine.domain;

import java.util.List;

import lombok.Data;

@Data
public class SurveyResultVO {
	private String user_id;
	private String gender;
	private String age;
	private List<EquipmentListVO> equipmentList;
	private String keyword;
	private String time;
	private String frequency;
	private String tool;
	
}
