package com.team4.acornshop.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.dto.UsersDto;
import com.team4.acornshop.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	//admin 페이지로 이동
	@RequestMapping("/admin/main")
	public String adminMainPage() {
		
		return "admin/main";
	}
	
	//회원 목록 > 페이징
	@RequestMapping("/admin/userAdmin")
	public ModelAndView usersList(ModelAndView m, HttpServletRequest request){
		adminService.UserList(m, request);
		
		m.setViewName("admin/userAdmin");
		return m;
	}

	//관리자 페이지에서 
	@RequestMapping("/admin/userDelete")
	public String userDelete() {
		
		return"admin/userDelete";
	}
	
	//관리자 페이지에서 
	@RequestMapping("/admin/addUser")
	public String addUser() {
		
		return"admin/addUser";
	}
	
	//관리자 페이지에서 회원 탈퇴 시 비밀번호 입력 ajax
	@RequestMapping("/admin/inputPwd")
	@ResponseBody
	public Map<String, Object> confirmPwd(UsersDto dto, HttpSession session){
		
		Map<String, Object> map =adminService.confirmPwd(session, dto);
		
		return map;
	}
	
	//관리자 페이지에서 비밀번호 입력하고 성공하면 pusers의 disabled에 yes 값을 넣어준다.
	@RequestMapping("/admin/deleteUsers")
	@ResponseBody
	public Map<String ,Object> deleteUsers(UsersDto dto){
		
		Map<String ,Object> map = adminService.deleteUsers(dto);
		return map;
	}
	
	//관리자 페이지에서 비밀번호 입력하고 성공하면 pusers의 disabled에 no 값을 넣어준다.
	@RequestMapping("/admin/addUsers")
	@ResponseBody
	public Map<String ,Object> addUsers(UsersDto dto){
		String id = dto.getId();
		Map<String ,Object> map = adminService.addUsers(dto);
		return map;
	}
}

