package com.team4.acornshop.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.dto.UsersDto;

@Controller
public class UsersController {
	
	
	 
	//로그인/회원가입 클릭 시 로그인 페이지로
	@RequestMapping("/users/loginForm")
	public String loginForm() {
		
		
		return "users/loginForm";
	}
	
	//로그인 페이지에서 회원가입 클릭 시 약관동의 페이지로
	@RequestMapping("/users/certification")
	public String certification(HttpServletRequest request) {
		return "users/certification";
	}
	
	//약관동의 페이지에서 회원가입 페이지로
	@RequestMapping("/users/signupForm")
	public String signupForm() {
		
		return "users/signupForm";
	}
	
}