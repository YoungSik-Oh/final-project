package com.team4.acornshop.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team4.acornshop.dao.NoticeDao;
import com.team4.acornshop.notice.dto.NoticeDto;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDao noticeDao;

	@Override
	public void saveContent(NoticeDto dto) {
		noticeDao.insert(dto);
	}

	@Override
	public void getList(HttpServletRequest request) {
		NoticeDto dto = new NoticeDto();
		List<NoticeDto> list = noticeDao.getList(dto);
		request.setAttribute("list", list);
	}

	@Override
	public void getDetail(HttpServletRequest request) {
		int nNo = Integer.parseInt(request.getParameter("nNo"));
		NoticeDto dto = new NoticeDto();
		dto.setnNo(nNo);
		NoticeDto resultDto = noticeDao.getData(nNo);
		/* noticeDao.addViewCount(nNo); */
		request.setAttribute("dto", resultDto);
	}

	@Override
	public void updateContent(NoticeDto dto) {
		noticeDao.update(dto);
		
	}

	@Override
	public void deleteContent(int num, HttpServletRequest request) {
		noticeDao.delete(num);
		
	}

}
