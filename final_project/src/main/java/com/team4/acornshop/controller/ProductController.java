package com.team4.acornshop.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.dto.ProductDto;
import com.team4.acornshop.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/product/productInsertform")
	public String productform() {
		return "product/productInsertform";
	}
	
	@RequestMapping(value= "/product/upload", method = RequestMethod.POST)
	public ModelAndView upload(ProductDto dto,ModelAndView v, HttpServletRequest request) {
		productService.uploadProduct(dto, v, request);
		v.setViewName("product/upload");
		return v;
	}
	
	@RequestMapping("/mypage/myproductList")
	public ModelAndView productList(ModelAndView v,HttpServletRequest request) {
		productService.getList(request);
		v.setViewName("mypage/myproductList");
		return v;
	}
	
	
}
