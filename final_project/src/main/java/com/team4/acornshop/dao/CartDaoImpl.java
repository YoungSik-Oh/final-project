package com.team4.acornshop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.acornshop.dto.CartDto;
@Repository
public class CartDaoImpl implements CartDao{
	@Autowired
	private SqlSession session;

	@Override
	public void insert(CartDto dto) {
		// TODO Auto-generated method stub
		session.insert("cart.insert", dto);
	}

	@Override
	public List<CartDto> getList(String id) {
		// TODO Auto-generated method stub
		return session.selectList("cart.getList", id);
	}

	@Override
	public CartDto getData(int pNo) {
		// TODO Auto-generated method stub
		return session.selectOne("cart.getData", pNo);
	}

	@Override
	public List<CartDto> getList2(String id) {
		// TODO Auto-generated method stub
		return session.selectList("cart.getList2",id);
	}

	@Override
	public void deleteproduct(int pNo) {
		// TODO Auto-generated method stub
		session.selectOne("users.delete", pNo);
	}

}
