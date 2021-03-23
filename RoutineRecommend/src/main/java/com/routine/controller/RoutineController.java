package com.routine.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.routine.domain.AuthVO;
import com.routine.domain.UserVO;
import com.routine.service.UserService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class RoutineController {
	
	@Setter(onMethod_=@Autowired)
	private UserService userService;
	
	@RequestMapping("/")
	public String toMainPage(Model model) {

		return "/MainPage/main";
	}
	
	@GetMapping("/customlogin")
	public String toLoginPage(String error,RedirectAttributes redirectAttributes,Model model) {
		log.info("err :" + error );
		if(error!=null) {
			model.addAttribute("msg","INVALID");
			return "/MainPage/customlogin";
		}
		model.addAttribute("msg","VALID");
		return "/MainPage/customlogin";
	}
	
	@RequestMapping("/register")
	public String toRegisterPage(Model model) {
		
		return "/MainPage/register";
	}
	
	
	
	@PostMapping("/newUser")
	public String register(UserVO userVO,AuthVO authVO, RedirectAttributes redirectAttributes) throws ParseException{
		
		//check if other user has same id
		if(userService.checkid(userVO.getId())>0){
			redirectAttributes.addFlashAttribute("msg","Already");
			return "redirect:/register";
		}
		
		
		//user join date format
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat format2 = new SimpleDateFormat ( "yyyy년 MM월dd일 HH시mm분ss초");
		Date joinDate = format2.parse(format2.format(cal.getTime()));
		userVO.setJoinDateTime(joinDate);
		
		//password hash
		String hashedPW = BCrypt.hashpw(userVO.getPassword(), BCrypt.gensalt());
		userVO.setPassword(hashedPW);
		
		//log
		log.info("member register..."+userVO);
		
		//register, and registerAuth
		userService.register(userVO);
		userService.registerAuth(userVO.getId());
		redirectAttributes.addFlashAttribute("msg","REGISTERED");
		
		return "redirect:/customlogin";
		
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		
		log.info("logout...");
		session.invalidate();
		
		return "redirect:/";
	}
	
	@RequestMapping("/loginsuccess")
	public String tologinsuccessPage(Model model) {
		
		return "/MainPage/loginsuccess";
	}
}
