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
	
	public List<ProductDto> getList(ProductDto dto) {
		// TODO Auto-generated method stub
		return session.selectList("product.getList", dto);
	}
	
	@Override
	public int getCount() {
		return session.selectOne("product.getCount");
	}

	@Override
	public int getCount(ProductDto dto) {
		return session.selectOne("product.admingetCount", dto);
	}
	
	@Override
	public ProductDto getData(int pNo) {
		return session.selectOne("product.getData", pNo);
	}

	@Override
	public void delete(int pNo) {
			session.delete("product.delete", pNo);
	}
	
	@Override
	public void update(ProductDto dto) {
			session.update("product.update", dto);
		
	}

	@Override
	public List<ProductDto> getList2(ProductDto dto) {
		return session.selectList("product.getList2", dto);
	}
}
