package com.team4.acornshop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.acornshop.dto.ProductDto;
@Repository
public class ProductDaoImpl implements ProductDao{
	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(ProductDto dto) {
		// TODO Auto-generated method stub
		session.insert("product.insert", dto);
	}
	
	@Override
	public ProductDto getData(int pId) {
		// TODO Auto-generated method stub
		return session.selectOne("product.getData", pId);
	}
	
	@Override
	public List<ProductDto> getList() {
		// TODO Auto-generated method stub
		return session.selectList("product.getList");
	}

	

}
