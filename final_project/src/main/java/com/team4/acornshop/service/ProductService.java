package com.team4.acornshop.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.dto.ProductDto;


public interface ProductService {
	public void uploadProduct(ProductDto dto, ModelAndView v,HttpServletRequest request);
}