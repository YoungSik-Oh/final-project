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
import com.team4.acornshop.service.UsersService;

@Controller
public class UsersController {
	
	@Autowired
	private UsersService usersService;
	 
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
	
	//id 중복확인 ajax
	@ResponseBody
	@RequestMapping("/users/checkId")
	public Map<String, Object>  checkId(@RequestParam String id){
		Map<String, Object> map = usersService.checkId(id);
		
		return map;
	}
	 
	//signupform에서 회원가입 완료 후 signup 페이지로
	@RequestMapping("/users/signup")
	public ModelAndView signup(UsersDto dto, ModelAndView m) {
		
		usersService.signup(dto);
		m.addObject("id", dto.getId());
		m.setViewName("users/signup");
		return m;
	}
	
	//loginForm에서 로그인 후 login 페이지로
	@RequestMapping("/users/login")
	public ModelAndView login(UsersDto dto,HttpSession session,ModelAndView m) {
		usersService.login(dto, session, m);
		m.setViewName("users/login");
		return m;
	}
	
	//로그아웃
	@RequestMapping("/users/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "main";
	}
	
	//로그아웃 ajax
	@RequestMapping("/users/logoutAjax")
	@ResponseBody
	public Map<String, Object> logoutAjax(HttpSession session) {
		Map<String, Object> map = new HashMap<>();
		
		session.invalidate();
		String logout = "로그아웃";
		map.put("logout", logout);
		return map;
	}
	
	//ajax로 네이버 콜백에서 네이버 로그인 시 회원가입 유무를 판단해 주는 맵핑
	@RequestMapping("/users/loginProcess")
	@ResponseBody
	public Map<String, Object> loginProcess(UsersDto dto, HttpSession session){
		//callBack에서 받은 naver 간편 로그인 정보를 session에 저장한다.
		session.setAttribute("naveremail", dto.getNaveremail());
		session.setAttribute("uniqid", dto.getUniqid());
		session.setAttribute("name", dto.getName());
		
		Map<String, Object> map = usersService.loginProcess(dto);
		return map;
	}
	
	//myPage지로 이동
	@RequestMapping("/users/private/myPage")
	public ModelAndView myPage(HttpSession session, ModelAndView m) {
		String id = (String)session.getAttribute("id");
		usersService.myPage(id, m);
		m.setViewName("users/private/myPage");
		return m;
	}
	
	//myPage에서 개인정보를 보기 위해 pwd를 검증하는 ajax
	@RequestMapping("/users/pwdConfirm")
	@ResponseBody
	public Map<String, Object> pwdConfirm(UsersDto dto, HttpSession session){
		String id = (String)session.getAttribute("id");
		dto.setId(id);
		Map<String, Object> map = usersService.pwdConfirm(dto);
		return map;
	}
	
	//마이페이지에서 개인정보 수정 페이지로 이동
	@RequestMapping("/users/private/personalInformationForm")
	public ModelAndView personalInformationForm(HttpSession session, ModelAndView m) {
		String id = (String)session.getAttribute("id");
		usersService.myPage(id, m);
		m.setViewName("users/private/personalInformationForm");
		return m;
	}
	
	//개인정보 수정 페이지에서 수정 완료
	@RequestMapping("/users/private/personalInformation")
	public String personalInformation(UsersDto dto) {
		usersService.privacyUpdate(dto);
		return "users/private/personalInformation";
	}
	
	//비밀번호 수정 폼
	@RequestMapping("/users/private/updatePwdForm")
	public String updatePwdForm() {
		return "users/private/updatePwdForm";
	}
	
	//비밀번호 수정 완료
	@RequestMapping("users/private/updatePwd")
	public ModelAndView updatePwdForm(ModelAndView m, HttpSession session, UsersDto dto, String newPwd) {
		usersService.updatePwd(session, dto, newPwd, m);
		m.setViewName("users/private/updatePwd");
		return m;
	}
	
	//회원탈퇴 폼
	@RequestMapping("/users/private/outForm")
	public String outForm() {
		return "users/private/outForm";
	}
	
	//회원탈퇴
	@RequestMapping("/users/private/out")
	public ModelAndView out(ModelAndView m, HttpSession session, UsersDto dto) {
	
		usersService.out(m, session, dto);
		m.setViewName("users/private/out");
		return m;
	}
	
	@RequestMapping("/reset")
	public String reset(HttpSession session) {
		session.invalidate();
		return "reset";
	}
	
	//아이디/비밀번호 찾기 폼
	@RequestMapping("/users/findForm")
	public String findForm() {
		return "users/findForm";
	}
	
	//아이디 찾기 ajax
	@RequestMapping("/users/findId")
	@ResponseBody
	public Map<String, Object> findId(UsersDto dto){
		Map<String, Object> map = usersService.findId(dto);
		return map;
	}
	
	//비밀번호 찾기 ajax
	@RequestMapping("/users/findPwd")
	@ResponseBody
	public Map<String, Object> findPwd(UsersDto dto){
		//6자리 난수를 생성하기
		Random rd = new Random();
		String rdNum = "";
		for(int i = 0; i < 3; i++) {
			rdNum = rdNum + rd.nextInt(9)+1 ;
		}
		
		Map<String, Object> map = usersService.findPwd(rdNum, dto);
		return map;
	}
	
	//비밀번호 찾기에서 새 비밀번호 입력 폼으로
	@RequestMapping("/users/findPwdForm")
	public String findPwdForm() {
		
		return "users/findPwdForm";
	}
	
	//새 비밀번호 폼에서 입력 완료
	@RequestMapping("/users/updateFindNewPwd")
	public String updateFindNewPwd(UsersDto dto) {
		usersService.updateFindNewPwd(dto);
		
		return "users/updateFindNewPwd";
	}
	
	//회원가입 폼에서 이메일 인증번호 보내주기
	@RequestMapping("/users/sendRdNum")
	@ResponseBody
	public Map<String, Object> sendRdNum(String email){
		//6자리 난수를 생성하기
		Random rd = new Random();
		String rdNum = "";
		for(int i = 0; i < 3; i++) {
			rdNum = rdNum + rd.nextInt(9)+1 ;
		}
		
		Map<String, Object> map = usersService.sendRdNum(rdNum, email);
		
		return map;
	}
	
	//정지먹은 회원 강제 로그아웃 시키기
	@RequestMapping("/isPuaseUser")
	@ResponseBody
	public Map<String, Object> isPuase(HttpSession session){
		Map<String, Object> map = new HashMap<>();
		
		session.invalidate();

		return map;
		
	}
}