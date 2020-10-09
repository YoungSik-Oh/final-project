package com.team4.acornshop.dao;

import java.util.List;

import com.team4.acornshop.dto.CartDto;

public interface CartDao {
	public void insert(CartDto dto);
	public List<CartDto> getList(String id);
	public List<CartDto> getList2(String id);
	public CartDto getData(String pId);
	public void deleteproduct(int cartId);
}
