package com.team4.acornshop.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.dto.ProductDto;


public interface ProductService {
	public void uploadProduct(ProductDto dto, ModelAndView v,HttpServletRequest request);
	public void getList(HttpServletRequest request);
	public void getDetail(HttpServletRequest request);
	public void deleteContent(int pNo, HttpServletRequest request);
	public void updateContent(ProductDto dto,HttpServletRequest request,ModelAndView m);
	public void getList2(HttpServletRequest request, ModelAndView m);
}
