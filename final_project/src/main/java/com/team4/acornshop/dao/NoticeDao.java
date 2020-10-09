package com.team4.acornshop.dao;

import java.util.List;

import com.team4.acornshop.notice.dto.NoticeDto;

public interface NoticeDao {
	public void insert(NoticeDto dto);

	public List<NoticeDto> getList(NoticeDto dto);

	public NoticeDto getData(int num);

	public void addViewCount(int num);
	
	public void delete(int num);
	
	public void update(NoticeDto dto);

}
