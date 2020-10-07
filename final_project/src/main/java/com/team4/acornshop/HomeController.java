package com.team4.acornshop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	
	@RequestMapping("/main")
	public String home() {
	
		return "main";
	}
	
	@RequestMapping("/naverLogin")
	public String naverLogin() {
		return "naverLogin";
	}
	
	@RequestMapping("/callback")
	public String callback() {
		return "callback";
	}

	@RequestMapping("/mypage/mypage.do")
	public String mypage() {
		
		return "mypage/mypage";
	}
	
	@RequestMapping("/mypage/orderlist.do")
	public String OrderList() {
		
		return "mypage/orderlist";
	}

	
	@RequestMapping("/mypage/product.do")
	public String product() {
	
		return "mypage/product";
	}
}
