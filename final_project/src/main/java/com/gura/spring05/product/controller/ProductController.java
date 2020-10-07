package com.gura.spring05.product.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import com.gura.spring05.product.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService ProductService;

	@RequestMapping("/product/list")
	public ModelAndView getList(HttpServletRequest request, ModelAndView mView) {
		ProductService.getList(request);
		mView.setViewName("product/list");
		return mView;
	}

}
