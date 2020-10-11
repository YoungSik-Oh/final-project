package com.team4.acornshop;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.dto.ProductDto;
import com.team4.acornshop.service.CategoryService;
import com.team4.acornshop.service.NoticeService;


@Controller
public class HomeController {
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/main")
	public String home(HttpServletRequest request, ProductDto dto) {
		noticeService.getList(request);
		
		categoryService.homeCategoryList(dto, request);
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
