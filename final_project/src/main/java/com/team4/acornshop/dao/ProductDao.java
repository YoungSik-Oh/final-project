package com.team4.acornshop.dao;

import java.util.List;

import com.team4.acornshop.dto.ProductDto;

public interface ProductDao {
	public void insert(ProductDto dto);
	public List<ProductDto> userAdminGetList(ProductDto dto);
	public int getCount(ProductDto dto);
	public List<ProductDto> getList(ProductDto dto);
	public int getCount();
	public ProductDto getData(int pNo);
	public List<ProductDto> getList2(ProductDto dto); //검색목록
}
