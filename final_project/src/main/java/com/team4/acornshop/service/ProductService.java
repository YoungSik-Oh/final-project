package com.team4.acornshop.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.dto.ProductDto;


public interface ProductService {
	public void uploadProduct(ProductDto dto, ModelAndView v,HttpServletRequest request);
	public void getList2(HttpServletRequest request, ModelAndView m);

}
