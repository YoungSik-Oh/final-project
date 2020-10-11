package com.team4.acornshop.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.dto.CouponDto;
import com.team4.acornshop.service.CouponService;

@Controller
public class CouponController {
	
	@Autowired
	private CouponService couponService;
	
	@RequestMapping("/coupon/couponInsertform")
	public String couponform() {
		return "coupon/couponInsertform";
	}

	@RequestMapping(value= "/coupon/upload", method = RequestMethod.POST)
	public ModelAndView upload(CouponDto dto,ModelAndView v, HttpServletRequest request) {
		couponService.uploadCoupon(dto, v, request);
		v.setViewName("coupon/upload");
		return v;
	}
	
}