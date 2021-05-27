package com.routine.controller;

import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.python.util.PythonInterpreter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.routine.domain.AuthVO;
import com.routine.domain.SurveyResultVO;
import com.routine.domain.UserVO;
import com.routine.service.SurveyService;
import com.routine.service.UserService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class RoutineController {
	
	@Setter(onMethod_=@Autowired)
	private UserService userService;
	
	@Setter(onMethod_=@Autowired)
	private SurveyService surveyService;
	
	private static PythonInterpreter intpre;
	
	
	
	@RequestMapping("/")
	public String toMainPage(Model model) {		
		return "/MainPage/customlogin";
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
	
	@RequestMapping("/checkSurvey")
	public String checkSurvey(Principal principal) {
		//check if user has survey data
		if(surveyService.readSurvey(principal.getName())==0) {
			
			//if data doesn't exist, do survey
			return "redirect:/survey";
		}
		else {
			
			//if data exists, go to todayworkout page
			return "redirect:/todayWorkout";
		}
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
		SimpleDateFormat format2 = new SimpleDateFormat ( "yyyy�뀈 MM�썡dd�씪 HH�떆mm遺꼜s珥�");
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
	
	@RequestMapping("/survey")
	public String toSurveyPage() {
		
		return "/MainPage/survey";
	}
	
	@GetMapping("/insertSurvey")
	public String insertSurvey(Principal principal,SurveyResultVO surveyresultVO) {
		surveyresultVO.setUser_id(principal.getName());
		surveyService.insertData(surveyresultVO);
		log.info(surveyresultVO);
		
		return "redirect:/todayWorkout";
	}
	
	@PostMapping("/surveyInput")
	public String inputSurvey() {
		
		return "redirect:/";
	}
	
	@RequestMapping("/userInfoEdit")
	public String touseredit() {
		return "/MainPage/userInfoEdit";
	}
	
	@RequestMapping("/workoutRecordCheck")
	public String tocheckPage() { 
		return "/MainPage/workoutRecordCheck";
	}
	
	@RequestMapping("/todayWorkout")
	public String toTodayWorkoutCheckPage(Principal principal,Model model) {
		model.addAttribute("username", principal.getName());
		model.addAttribute("keyword",surveyService.readSurveyKeyword(principal.getName()));
		
		//sample data -> need python return data later
		String first = "윗몸일으키기";
		String numberDes1 = "시간";
		String firstdata = "10분";
		
		String second = "팔굽혀펴기";
		String numberDes2 = "횟수";
		String seconddata = "20번";
		
		String third = "플랭크";
		String numberDes3 = "세트";
		String thirddata = "5세트 20회";
		
		model.addAttribute("first",first);
		model.addAttribute("numberDes1",numberDes1);
		model.addAttribute("firstdata",firstdata);
		model.addAttribute("second",second);
		model.addAttribute("numberDes2",numberDes2);
		model.addAttribute("numberDes1",numberDes1);
		model.addAttribute("seconddata",seconddata);
		model.addAttribute("third",third);
		model.addAttribute("numberDes3",numberDes3);
		model.addAttribute("thirddata",thirddata);
		
		return "/MainPage/todayWorkout";
	}
	
	@RequestMapping("/example")
	public String toExamplePage() { 
		return "/MainPage/example";
	}
	
	
	
}
