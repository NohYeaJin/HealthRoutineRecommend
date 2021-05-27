package com.routine.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.routine.domain.UserVO;
import com.routine.service.SurveyService;
import com.routine.service.UserService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller

@RequestMapping("/admin/*")
public class AdminController {
	
	@Setter(onMethod_=@Autowired)
	private UserService userService;
	
	@Setter(onMethod_=@Autowired)
	private SurveyService surveyService;
	
	@RequestMapping("/member")
	public String toMemberAdminPage(Model model) {
		
		List<UserVO> list = userService.showAll();
		model.addAttribute("list", list);
		return "/admin/member";
	}
	
	@RequestMapping("/exercises")
	public String toexercisesAdminPage(Model model) {
		
		return "/admin/exercises";
	}
	
	@RequestMapping("/surveys")
	public String tosurveysAdminPage(Model model) {
		model.addAttribute(surveyService.showSurveyResult());
		return "/admin/surveys";
	}
}
