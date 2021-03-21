package com.routine.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class RoutineController {
	
	@RequestMapping("/")
	public String toMainPage(Model model) {
		model.addAttribute("welcome","welcome to main page!");
		
		return "/MainPage/main";
	}
}
