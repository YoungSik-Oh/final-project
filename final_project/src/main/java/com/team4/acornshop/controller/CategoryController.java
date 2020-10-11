package com.team4.acornshop.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.dto.ProductDto;
import com.team4.acornshop.service.CategoryService;

@Controller
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/category/detailPage")
	public ModelAndView detailPage(ProductDto dto, ModelAndView m, HttpServletRequest request) {
		categoryService.categoryGetList(m, dto, request);
		m.setViewName("category/detailPage");
		return m;
	}
}
