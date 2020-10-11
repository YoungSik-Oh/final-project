package com.team4.acornshop.service;

import java.io.File;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.team4.acornshop.dao.ProductDao;
import com.team4.acornshop.dto.ProductDto;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;

	@Override
	public void uploadProduct(ProductDto dto, ModelAndView v, HttpServletRequest request) {
		// 업로드된 파일의 정보를 가지고 있는 MultipartFile 객체의 참조값 얻어오기
		MultipartFile myFile = dto.getMyFile();
		// 원본 파일명
		String orgFileName = myFile.getOriginalFilename();
		// 파일의 크기
		long fileSize = myFile.getSize();

		// webapp/upload 폴더 까지의 실제 경로(서버의 파일시스템 상에서의 경로)
		String realPath = request.getServletContext().getRealPath("/upload");
		// 저장할 파일의 상세 경로
		String filePath = realPath + File.separator;
		// 디렉토리를 만들 파일 객체 생성
		File upload = new File(filePath);
		if (!upload.exists()) {// 만일 디렉토리가 존재하지 않으면
			upload.mkdir(); // 만들어 준다.
		}
		// 저장할 파일 명을 구성한다.
		String saveFileName = System.currentTimeMillis() + orgFileName;
		try {
			// upload 폴더에 파일을 저장한다.
			myFile.transferTo(new File(filePath + saveFileName));
			System.out.println(filePath + saveFileName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// dto 에 업로드된 상품정보를 담는다.
		String id = (String) request.getSession().getAttribute("id");

		// 세션에서 읽어낸 파일 업로더의 아이디
		dto.setOrgFileName(orgFileName);
		dto.setSaveFileName(saveFileName);
		dto.setFileSize(fileSize);
		// fileDao 를 이용해서 DB 에 저장하기
		productDao.insert(dto);
		// view 페이지에서 사용할 모델 담기
		v.addObject("dto", dto);

	}

	@Override
	public void getList2(HttpServletRequest request, ModelAndView m) {
		/*
		 * 검색 키워드에 관련된 처리
		 */
		String keyword = request.getParameter("keyword"); // 검색 키워드
		String condition = request.getParameter("condition"); // 검색 조건
		if (keyword == null) {// 전달된 키워드가 없다면
			keyword = ""; // 빈 문자열을 넣어준다.
			condition = "";
		}
		// 인코딩된 키워드를 미리 만들어 둔다.
		String encodedK = URLEncoder.encode(keyword);

		// 검색 키워드와 startRowNum, endRowNum 을 담을 FileDto 객체 생성
		ProductDto dto = new ProductDto();

		if (!keyword.equals("")) { // 만일 키워드가 넘어온다면
			if (condition.equals("a")) {
				// 검색 키워드를 FileDto 객체의 필드에 담는다.
				dto.setpTitle(keyword);
			} else if (condition.equals("b")) {
				dto.setpTitle(keyword);
			} else if (condition.equals("c")) {
				dto.setpTitle(keyword);
			} else if (condition.equals("d")) {
				dto.setpTitle(keyword);
			}
		}

		// 카페글 목록 얻어오기
		List<ProductDto> list = productDao.getList3(dto);

		m.addObject("plist", list);
	}

}
