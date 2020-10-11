package com.team4.acornshop.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.dao.CouponDao;
import com.team4.acornshop.dto.CouponDto;

@Service
public class CouponServiceImpl implements CouponService {
	
	@Autowired
	private CouponDao couponDao;

	@Override
	public void uploadCoupon(CouponDto dto, ModelAndView v, HttpServletRequest request) {
	
	//세션에서 읽어낸 쿠폰 등록자의 아이디 
	String id=(String)request.getSession().getAttribute("id");
	
	dto.setId(id);
	
	couponDao.insert(dto);
	v.addObject("dto", dto);
	
	}
}