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
	
	@RequestMapping("/product/productdetail")
	public ModelAndView productdetail(HttpServletRequest request, ModelAndView m) {
		productService.getDetail(request);
		m.setViewName("product/productdetail");
		return m;
	}
	@RequestMapping("/product/delete")
	public ModelAndView delete(int pNo, HttpServletRequest request,
			ModelAndView mView) {
		productService.deleteContent(pNo, request);
		mView.setViewName("product/delete");
		return mView;
	}
	@RequestMapping("/product/productUpdateform")
	public ModelAndView productupdateform(ModelAndView m, HttpServletRequest request) {
		productService.getDetail(request);
		m.setViewName("product/productUpdateform");
		return m;
	}
	@RequestMapping("/product/update")
	public ModelAndView update(ModelAndView m, HttpServletRequest request,ProductDto dto) {
		productService.updateContent(dto, request, m);
		m.setViewName("product/update");
		return m;
	}
	
	@RequestMapping("/product/searchProduct")
	public ModelAndView searchProduct(ModelAndView m, HttpServletRequest request) {
		productService.getList2(request,m);
		
		m.setViewName("product/searchProduct");
		return m;
	}
}