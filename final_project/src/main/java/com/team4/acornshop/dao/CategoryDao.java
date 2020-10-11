package com.team4.acornshop.dao;

import java.util.List;

import com.team4.acornshop.dto.ProductDto;

public interface CategoryDao {
	public List<ProductDto> categoryGetList(ProductDto dto);
	public int categoryGetCount(ProductDto dto);
	public List<ProductDto> homeCategoryList(ProductDto dto);
	public int categoryGetCount();
}
