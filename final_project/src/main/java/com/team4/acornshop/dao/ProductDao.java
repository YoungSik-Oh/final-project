package com.team4.acornshop.dao;

import java.util.List;

import com.team4.acornshop.dto.ProductDto;

public interface ProductDao {
	public void insert(ProductDto dto);
	//글목록
	public List<ProductDto> getList3(ProductDto dto);
}
