package com.routine.mapper;
import java.util.List;

import com.routine.domain.SurveyResultVO;
import com.routine.domain.ToolVO;

public interface SurveyMapper {
	
	//insert user's survey result data
	public void insert(SurveyResultVO surveyResultVO);
	
	//insert user's survey tool data
	public void insertTool(ToolVO toolVO);
	
	//show all result data(for admin)
	public List<SurveyResultVO> show();
	
	//update survey data
	public void update(SurveyResultVO surveyResultVO);
	
	//check if user has already did survey or not
	public int read(String user_id);
	
	//read user's keyword for todayworkout page
	public String readKeyword(String user_id);
	
}
