package com.team4.acornshop.service;


import javax.servlet.http.HttpServletRequest;

import com.team4.acornshop.dto.ProductDto;

public interface ProductService {
	public void saveContent(ProductDto dto);
	public void getList(HttpServletRequest request);
}
