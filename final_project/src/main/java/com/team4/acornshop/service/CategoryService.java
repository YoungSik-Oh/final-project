package com.team4.acornshop.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.dto.ProductDto;

public interface CategoryService {
	public void categoryGetList(ModelAndView m, ProductDto dto, HttpServletRequest request);
	public void homeCategoryList(ProductDto dto, HttpServletRequest request);
}
