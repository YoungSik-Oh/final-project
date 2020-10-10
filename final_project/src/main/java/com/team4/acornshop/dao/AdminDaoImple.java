package com.team4.acornshop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.acornshop.dto.UsersDto;

@Repository
public class AdminDaoImple implements AdminDao{
	@Autowired
	private SqlSession session;
	
	@Override
	public List<UsersDto> UsersList(UsersDto dto) {
		
		return session.selectList("admin.userList", dto);
		
	}

	@Override
	public int getCount(UsersDto dto) {
		
		return session.selectOne("admin.getCount", dto);
	}
	
}
