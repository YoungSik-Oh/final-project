package com.team4.acornshop.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.dto.UsersDto;

public interface UsersService {
	public Map<String, Object> checkId(String id);
	public void signup(UsersDto dto);
	public void login(UsersDto dto, HttpSession session, ModelAndView m);
	public Map<String, Object> loginProcess(UsersDto dto);
	public ModelAndView myPage(String id, ModelAndView m);
	public Map<String, Object> pwdConfirm(UsersDto dto);
	public void privacyUpdate(UsersDto dto);
	public void updatePwd(HttpSession session, UsersDto dto, String newPwd, ModelAndView m);
	public void out(ModelAndView m, HttpSession session, UsersDto dto);
	public Map<String, Object> findId(UsersDto dto);
	public Map<String, Object> findPwd(String rdNum, UsersDto dto);
	public void updateFindNewPwd(UsersDto dto);
	public Map<String, Object> sendRdNum(String rdNum, String email);
}
