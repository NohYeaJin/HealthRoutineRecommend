package com.routine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class RoutineController {
	
	@RequestMapping("/")
	public String toLoginPage(Model model) {
		
		return "/MainPage/login";
	}
	
	@RequestMapping("/register")
	public String toRegisterPage(Model model) {
		
		return "/MainPage/register";
	}
}
