package com.team4.acornshop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team4.acornshop.notice.dto.NoticeDto;

@Repository
public class NoticeDaoImpl implements NoticeDao {

	@Autowired
	private SqlSession session;

	@Override
	public void insert(NoticeDto dto) {
		session.insert("notice.insert", dto);

	}

	@Override
	public List<NoticeDto> getList(NoticeDto dto) {

		return session.selectList("notice.getList", dto);
	}

	@Override
	public NoticeDto getData(int num) {

		return session.selectOne("notice.getData", num);
	}

	@Override
	public void addViewCount(int num) {
		session.update("notice.addViewCount", num);

	}
	@Override
	public void delete(int num) {
		session.delete("notice.delete", num);
	}

	@Override
	public void update(NoticeDto dto) {
		session.update("notice.update", dto);
	}

}
