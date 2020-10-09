package com.team4.acornshop.service;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.team4.acornshop.dto.CartDto;

public interface CartService {
	public void insert(CartDto dto);
	public void getList(HttpServletRequest request,CartDto dto);
	public void getList2(HttpServletRequest request,CartDto dto);
	public void getpData(String pId, HttpServletRequest request);
	public void deleteproduct(int cartId, HttpServletRequest request);
}
