package com.team4.acornshop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.dto.CartDto;
import com.team4.acornshop.dto.UsersDto;
import com.team4.acornshop.service.CartService;
import com.team4.acornshop.service.UsersService;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	@Autowired
	private UsersService userService;
	
	@RequestMapping("/cart/cart")
	public ModelAndView getlist(ModelAndView mView, HttpServletRequest request, CartDto dto) {
		cartService.getList(request, dto);
		mView.setViewName("cart/cart");
		return mView;
	}
	
	@RequestMapping("/cart/insert")
	public String insert(CartDto dto, HttpSession session) {
		String id=(String)session.getAttribute("id");
		System.out.println(id);
		System.out.println(dto.getpId());
		System.out.println(dto.getpTitle());
		System.out.println(dto.getpPrice());
		dto.setid(id);
		cartService.insert(dto);
		return "redirect:../main.do";
	}
	
	@RequestMapping("/cart/payment")
	public ModelAndView getlist2(ModelAndView mView, HttpServletRequest request, CartDto dto) {
		String id = (String)request.getSession().getAttribute("id");
		userService.myPage(id, mView);
		cartService.getList2(request, dto);
		mView.setViewName("cart/payment");
		return mView;
	}
	
	@RequestMapping("/cart/delete")
	public ModelAndView delete(HttpServletRequest request,@RequestParam int cartId, ModelAndView mView) {
		cartService.deleteproduct(cartId, request);
		mView.setViewName("redirect:/cart.do");
		return mView;
	}
	
}
