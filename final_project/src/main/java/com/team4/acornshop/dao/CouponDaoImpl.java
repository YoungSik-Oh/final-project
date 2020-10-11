package com.team4.acornshop.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.acornshop.dto.CouponDto;


@Repository
public class CouponDaoImpl implements CouponDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public void insert(CouponDto dto) {
		session.insert("coupon.insert",dto);
	}

}
