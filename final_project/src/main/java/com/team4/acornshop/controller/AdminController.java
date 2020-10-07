package com.team4.acornshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

	@RequestMapping("/admin/main")
	public ModelAndView ysadmin(ModelAndView mV) {

		mV.setViewName("admin/main");
		return mV;
	}

}
