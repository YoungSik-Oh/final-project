package com.team4.acornshop.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.dto.CouponDto;

public interface CouponService {
	public void uploadCoupon(CouponDto dto, ModelAndView v,HttpServletRequest request);
	}
