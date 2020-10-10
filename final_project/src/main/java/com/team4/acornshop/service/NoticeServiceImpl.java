package com.team4.acornshop.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team4.acornshop.dao.NoticeDao;
import com.team4.acornshop.dto.UsersDto;
import com.team4.acornshop.notice.dto.NoticeDto;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDao noticeDao;

	@Override
	public void saveContent(NoticeDto dto) {
		noticeDao.insert(dto);
	}
	
	//한 페이지에 나타낼 row 의 갯수
	final int PAGE_ROW_COUNT=3;
	//하단 디스플레이 페이지 갯수
	final int PAGE_DISPLAY_COUNT=5;	
	
	@Override
	public void getList(HttpServletRequest request) {
		//보여줄 페이지의 번호
		int pageNum=1;
		//보여줄 페이지의 번호가 파라미터로 전달되는지 읽어와 본다.	
		String strPageNum=request.getParameter("pageNum");
		if(strPageNum != null){//페이지 번호가 파라미터로 넘어온다면
			//페이지 번호를 설정한다.
			pageNum=Integer.parseInt(strPageNum);
		}
		//보여줄 페이지 데이터의 시작 ResultSet row 번호
		int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
		//보여줄 페이지 데이터의 끝 ResultSet row 번호
		int endRowNum=pageNum*PAGE_ROW_COUNT;
		
		NoticeDto dto = new NoticeDto();
		dto.setStartRowNum(startRowNum);
		dto.setEndRowNum(endRowNum);
	
		
		List<NoticeDto> list = noticeDao.getList(dto);
		
		//전체 row 의 갯수를 담을 변수 
		int totalRow=noticeDao.getCount(dto);
		
		//전체 페이지의 갯수 구하기
		int totalPageCount=
				(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);//정수를 정수로 나눠봐야 실수가 아니기 때문에 pageNum = 1~5 사이에서는 다 1페이지가 시작 번호
		//시작 페이지 번호
		int startPageNum=   
			1+((pageNum-1)/PAGE_DISPLAY_COUNT)*PAGE_DISPLAY_COUNT;
		//끝 페이지 번호
		int endPageNum=startPageNum+PAGE_DISPLAY_COUNT-1;
		//끝 페이지 번호가 잘못된 값이라면   항상 글의 갯수가 맞춰져 있지 않기 떄문에 있는 만큼의 페이지를 끝 페이지로 설정한다.
		if(totalPageCount < endPageNum){
			endPageNum=totalPageCount; //보정해준다. 
		}
		
		request.setAttribute("list", list); 
		request.setAttribute("startPageNum", startPageNum);
		request.setAttribute("endPageNum", endPageNum);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("totalPageCount", totalPageCount);
	}

	@Override
	public void getDetail(HttpServletRequest request) {
		int nNo = Integer.parseInt(request.getParameter("nNo"));
		
		NoticeDto dto = new NoticeDto();
		dto.setnNo(nNo);
		noticeDao.addViewCount(nNo);
		NoticeDto resultDto = noticeDao.getData(nNo);
		
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
