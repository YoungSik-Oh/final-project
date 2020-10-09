package com.team4.acornshop;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team4.acornshop.service.NoticeService;


@Controller
public class HomeController {
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("/main")
	public String home(HttpServletRequest request) {
		noticeService.getList(request);
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
	
	@RequestMapping("/mypage/orderdetail.do")
	public String orderdetail() {
		
		return "mypage/orderdetail";
	}

}
