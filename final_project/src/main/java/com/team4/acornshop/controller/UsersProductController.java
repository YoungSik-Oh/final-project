package com.team4.acornshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UsersProductController {
	@RequestMapping("/product/productdetail")
	public String detail(){
		
		return "product/productdetail";
	}
	@RequestMapping("/product/searchProduct")
	public ModelAndView searchProduct(ModelAndView m) {
		m.setViewName("product/searchProduct");
		return m;
	}
}
