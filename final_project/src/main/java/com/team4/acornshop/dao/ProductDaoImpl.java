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
		session.insert("product.insert",dto);
	}

	@Override
	public List<ProductDto> getList(ProductDto dto) {
		// TODO Auto-generated method stub
		return session.selectList("product.getList", dto);
	}
	
	@Override
	public int getCount() {
		return session.selectOne("product.getCount");
	}

	@Override
	public ProductDto getData(int pNo) {
		return session.selectOne("product.getData", pNo);
	}

	@Override
	public void delete(int pNo) {
			session.delete("product.delete", pNo);
		
	}
	
}
