package com.team4.acornshop.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.dto.UsersDto;

public interface AdminService {
	public void UserList(ModelAndView m, HttpServletRequest request);
	public Map<String, Object> confirmPwd(HttpSession session, UsersDto dto);
	public Map<String, Object> deleteUsers(UsersDto dto);
	public Map<String, Object> addUsers(UsersDto dto);
	public void userAdminGetList(ModelAndView m, HttpServletRequest request, String id);
}
