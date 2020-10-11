package com.team4.acornshop.service;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.team4.acornshop.dto.CartDto;
import com.team4.acornshop.dto.UsersDto;

public interface CartService {
	public void insert(CartDto dto);
	public void getList(HttpServletRequest request,CartDto dto);
	public void getList2(HttpServletRequest request,CartDto dto);
	public void getpData(int pNo, HttpServletRequest request);
	public void deleteproduct(CartDto dto);
	public void destinationUpdate(UsersDto dto);
	public void getSellList(HttpServletRequest request,CartDto dto);
}
