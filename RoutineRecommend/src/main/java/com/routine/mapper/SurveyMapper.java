package com.routine.mapper;
import java.util.List;

import com.routine.domain.SurveyResultVO;

public interface SurveyMapper {
	
	//insert user's survey result data
	public void insert(SurveyResultVO surveyResultVO);
	
	//show all result data(for admin)
	public List<SurveyResultVO> show();
	
	//update survey data
	public void update(SurveyResultVO surveyResultVO);

}
