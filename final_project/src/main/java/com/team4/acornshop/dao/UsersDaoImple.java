package com.team4.acornshop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.acornshop.dto.UsersDto;

@Repository
public class UsersDaoImple implements UsersDao{
	@Autowired
	private SqlSession session;
	
	public boolean checkId(String id) {
		String isExist = session.selectOne("users.checkId", id);
		
		if(isExist == null) {
			//중복이 안되면 false를 리턴
			return false;
		}else {
			//중복이면 true를 리턴
			return true;
		}
	}

	@Override
	public void signup(UsersDto dto) {
		session.insert("users.signup", dto);
	}

	@Override
	public UsersDto getData(String id) {
		UsersDto dto = session.selectOne("users.getData", id);
		return dto;
	}

	@Override
	public boolean loginProcess(UsersDto dto) {
		String isExist = session.selectOne("users.loginProcess", dto);
		
		if(isExist == null) {
			//네이버 이메일과 고유식별번호를 조건으로 아이디를 검색했을 때 검색된 아이디가 없으면
			return false;
		}else {
			//있으면
			return true;
		}
	}

	@Override
	public void privacyUpdate(UsersDto dto) {
		session.update("users.privacyUpdate", dto);
	}

	@Override
	public void updatePwd(UsersDto dto) {
		session.update("users.updatePwd", dto);
	}

	@Override
	public void out(String id) {
		session.delete("users.out", id);
	}

	@Override
	public UsersDto findId(UsersDto dto) {
		UsersDto dtoId = session.selectOne("users.findId", dto);
		return dtoId;
	}

	@Override
	public boolean findPwd(UsersDto dto) {
		String id = session.selectOne("users.findPwd", dto);
		
		if(id == null) {
			return false;
		}else {
			return true;
		}
	}

	@Override
	public void updateFindNewPwd(UsersDto dto) {
		session.update("users.updateFindNewPwd", dto);
	}

	@Override
	public boolean emailConfirm(String email) {
		String confirmEmail = session.selectOne("users.emailConfirm", email);
		
		if(confirmEmail == null) {  //false면 중복된 이메일 없음
			return false;
		}else {
			return true;
		}
	}

	@Override
	public void containUsers(UsersDto dto) {
		session.update("users.containUser", dto);
	}

	@Override
	public List<UsersDto> getIdList2(UsersDto dto) {
		
		return session.selectList("users.getIdList", dto);
		
	}
}
