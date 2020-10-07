package com.team4.acornshop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	private ProductService productservice;
	
	@RequestMapping("/product/list")
	public ModelAndView getList(HttpServletRequest request, 
			ModelAndView mView) {
		productservice.getList(request);
		mView.setViewName("cafe/list");
		return mView;
	}
	
	@RequestMapping("/product/product_insert_form")
	public ModelAndView insertForm(ModelAndView mView) {
		mView.setViewName("product/product_insert_form");
		return mView;
	}
	
	@RequestMapping(value = "/product/product_insert", method=RequestMethod.POST)
	public ModelAndView insert(ProductDto dto, ModelAndView mView, HttpSession session) {
		//dto 에 글 작성자 담기 
		String seller=(String)session.getAttribute("id");
		dto.setseller(seller);
		productservice.saveContent(dto);
		mView.setViewName("product/product_insert");
		return mView;
	}
}
