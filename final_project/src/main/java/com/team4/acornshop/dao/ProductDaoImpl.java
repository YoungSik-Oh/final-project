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
	public List<ProductDto> userAdminGetList(ProductDto dto) {
		
		return session.selectList("product.userAdminGetList", dto);
	}
	
   @Override
   public int getCount(ProductDto dto) {
      return session.selectOne("product.getCount", dto);
   }
}
