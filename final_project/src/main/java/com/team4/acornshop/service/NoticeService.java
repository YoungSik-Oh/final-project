package com.team4.acornshop.service;

import javax.servlet.http.HttpServletRequest;

import com.team4.acornshop.notice.dto.NoticeDto;

public interface NoticeService {
	public void saveContent(NoticeDto dto);

	public void getList(HttpServletRequest request);

	public void getDetail(HttpServletRequest request);
	
	public void updateContent(NoticeDto dto);
	
	public void deleteContent(int num, HttpServletRequest request);

}
