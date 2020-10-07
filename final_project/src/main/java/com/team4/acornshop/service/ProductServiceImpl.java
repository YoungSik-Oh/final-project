package com.team4.acornshop.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team4.acornshop.dao.ProductDao;
import com.team4.acornshop.dto.ProductDto;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDao productdao;

	@Override
	public void saveContent(ProductDto dto) {
		// TODO Auto-generated method stub
		productdao.insert(dto);
	}

	@Override
	public List<ProductDto> getList(HttpServletRequest request) {
		// TODO Auto-generated method stub
		ProductDto dto=new ProductDto();
		List<ProductDto> list=productdao.getList(dto);
		return list;
	}
}
