package com.team4.acornshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsersProductController {
	@RequestMapping("/product/productdetail")
	public String detail(){
		
		return "product/productdetail";
	}
}
