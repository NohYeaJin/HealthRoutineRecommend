package com.routine.domain;

import java.util.List;

import lombok.Data;

@Data
public class SurveyResultVO {
	private String user_id;
	private String gender;
	private int age;
	private List<EquipmentListVO> equipmentList;
	private String kind;
	private int time;
	private int frequency;
	
}
