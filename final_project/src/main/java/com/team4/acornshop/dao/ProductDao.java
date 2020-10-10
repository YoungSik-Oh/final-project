package com.team4.acornshop.dao;


import java.util.List;

import com.team4.acornshop.dto.ProductDto;

public interface ProductDao {
	//글 추가
	public void insert(ProductDto dto);
	public ProductDto getData(int pId);
	public List<ProductDto> getList();
}
