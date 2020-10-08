package com.team4.acornshop.dao;

import java.util.List;

import com.team4.acornshop.dto.UsersDto;

public interface AdminDao {
	public List<UsersDto> UsersList(UsersDto dto);
	public int getCount(UsersDto dto);
}
