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
	
	@RequestMapping("/mypage/orderdetail.do")
	public String orderdetail() {
		
		return "mypage/orderdetail";
	}

	// 운영정책로 이동
	@RequestMapping("/operation/operation_policy")
	public String operationPage() {
		
	return "operation/operation_policy";
	}
	
	// 거래금지품목 페이지로 이동
	@RequestMapping("/product/prohibit")
	public String prohibit2() {
			
	return "product/prohibit";
	}
	// 이용약관 페이지로 이동
	@RequestMapping("/operation/access_terms")
	public String access_terms() {

		return "operation/access_terms";
	}
	// 개인정보처리방침 페이지로 이동
		@RequestMapping("/operation/privacy")
		public String privacy() {

			return "operation/privacy";
		}
}
