package com.team4.acornshop.dao;

import com.team4.acornshop.dto.UsersDto;

public interface UsersDao {
	public boolean checkId(String id);
	public void signup(UsersDto dto);
	public UsersDto getData(String id);
	public boolean loginProcess(UsersDto dto);
	public void privacyUpdate(UsersDto dto);
	public void updatePwd(UsersDto dto);
	public void out(String id);
	public UsersDto findId(UsersDto dto);
	public boolean findPwd(UsersDto dto);
	public void updateFindNewPwd(UsersDto dto);
	public boolean emailConfirm(String email);
	//admin controller에서 사용
	public void containUsers(UsersDto dto);
}
