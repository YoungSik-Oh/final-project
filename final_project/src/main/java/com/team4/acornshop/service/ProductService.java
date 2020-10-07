package com.team4.acornshop.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.team4.acornshop.dto.ProductDto;

public interface ProductService {
	public void saveContent(ProductDto dto);
	public List<ProductDto> getList(HttpServletRequest request);
}
