package com.team4.acornshop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.acornshop.dto.ProductDto;

@Repository
public class CategoryDaoImple implements CategoryDao{
	@Autowired
	private SqlSession session;

	@Override
	public List<ProductDto> categoryGetList(ProductDto dto) {
		
		return session.selectList("category.categoryGetList", dto) ;
	}

	@Override
	public int categoryGetCount(ProductDto dto) {
		
		return session.selectOne("category.categoryGetCount", dto);
	}

	@Override
	public List<ProductDto> homeCategoryList(ProductDto dto) {
		
		return session.selectList("category.homeCategoryList", dto) ;
	}

	@Override
	public int categoryGetCount() {

		return session.selectOne("category.homeCategoryGetCount");
	}
}
