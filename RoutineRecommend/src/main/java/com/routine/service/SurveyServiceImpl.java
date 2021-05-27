package com.routine.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.routine.domain.SurveyResultVO;
import com.routine.domain.ToolVO;
import com.routine.mapper.MemberMapper;
import com.routine.mapper.SurveyMapper;
import com.routine.mapper.UserMapper;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class SurveyServiceImpl implements SurveyService {
	
	private SurveyMapper mapper;
	
	//insert user's survey result data
	public void insertData(SurveyResultVO surveyResultVO) {
		mapper.insert(surveyResultVO);
	}
			
		//insert user's survey tool data
	public void insertToolData(ToolVO toolVO) {
		mapper.insertTool(toolVO);	
	}
			
		//show all result data(for admin)
	public List<SurveyResultVO> showSurveyResult(){
		return mapper.show();
	}
			
		//update survey data
	public void updateSurveyResult(SurveyResultVO surveyResultVO) {
		mapper.update(surveyResultVO);
	}
			
		//check if user has already did survey or not
	public int readSurvey(String user_id) {
			return mapper.read(user_id);
	}
	
	public String readSurveyKeyword(String user_id) {
		return mapper.readKeyword(user_id);
	}

}
