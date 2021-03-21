package com.routine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller

@RequestMapping("/admin/*")
public class AdminController {
	
	@RequestMapping("/member")
	public String toMemberAdminPage(Model model) {
		
		
		return "/admin/member";
	}
	
	@RequestMapping("/exercises")
	public String toexercisesAdminPage(Model model) {
		
		return "/admin/exercises";
	}
}
