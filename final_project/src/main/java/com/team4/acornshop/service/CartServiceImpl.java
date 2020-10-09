package com.team4.acornshop.service;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import com.team4.acornshop.dao.CartDao;
import com.team4.acornshop.dto.CartDto;

@Service
public class CartServiceImpl implements CartService{
	@Autowired
	private CartDao cartDao;
	@Override
	public void insert(CartDto dto) {
		// TODO Auto-generated method stub
		cartDao.insert(dto);
	}

	@Override
	public void getList(HttpServletRequest request, CartDto dto) {
		// TODO Auto-generated method stub
		String id=(String)request.getSession().getAttribute("id");
		List<CartDto> clist=cartDao.getList(id);
		request.setAttribute("clist", clist);
	}
	
	@Override
	public void getList2(HttpServletRequest request, CartDto dto) {
		// TODO Auto-generated method stub
		String id=(String)request.getSession().getAttribute("id");
		List<CartDto> clist2=cartDao.getList2(id);
		request.setAttribute("clist2", clist2);
	}
	
	@Override
	public void getpData(String pId, HttpServletRequest request) {
		// TODO Auto-generated method stub
		//삭제할 파일의 정보를 읽어온다.
		CartDto dto=cartDao.getData(pId);
		request.setAttribute("dto", dto);
	}

	@Override
	public void deleteproduct(int cartId, HttpServletRequest request) {
		// TODO Auto-generated method stub
		cartDao.deleteproduct(cartId);
	}
	
}
