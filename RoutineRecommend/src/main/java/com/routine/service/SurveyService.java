package com.routine.service;

import java.util.List;

import com.routine.domain.SurveyResultVO;
import com.routine.domain.ToolVO;

public interface SurveyService {
	
	//insert user's survey result data
	public void insertData(SurveyResultVO surveyResultVO);
		
	//insert user's survey tool data
	public void insertToolData(ToolVO toolVO);
		
	//show all result data(for admin)
	public List<SurveyResultVO> showSurveyResult();
		
	//update survey data
	public void updateSurveyResult(SurveyResultVO surveyResultVO);
		
	//check if user has already did survey or not
	public int readSurvey(String user_id);
	
	//read user's keyword for todayworkout page
	public String readSurveyKeyword(String user_id);
	
	
}
