package com.team4.acornshop.dto;

import org.springframework.web.multipart.MultipartFile;

public class ProductDto {
	private int pNo; // 상품 아이디
	private String pTitle; // 상품 제목
	private int pPrice; // 상품가격
	private String pShipping; //배송비 포함
	private String pState; // 상품 상태
	private String pChange;//교환여부
	private String pContents; // 내용
	private String pCategory; // 카테고리
	private String pIsUsed; // 중고 여부
	private String pRegdate; // 등록일자
	private String orgFileName;
	private String saveFileName;
	private long fileSize;
	private MultipartFile myFile;
	
	public ProductDto () {}

	public ProductDto(int pNo, String pTitle, int pPrice, String pShipping, String pState, String pChange,
			String pContents, String pCategory, String pIsUsed, String pRegdate, String orgFileName,
			String saveFileName, long fileSize, MultipartFile myFile) {
		super();
		this.pNo = pNo;
		this.pTitle = pTitle;
		this.pPrice = pPrice;
		this.pShipping = pShipping;
		this.pState = pState;
		this.pChange = pChange;
		this.pContents = pContents;
		this.pCategory = pCategory;
		this.pIsUsed = pIsUsed;
		this.pRegdate = pRegdate;
		this.orgFileName = orgFileName;
		this.saveFileName = saveFileName;
		this.fileSize = fileSize;
		this.myFile = myFile;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getpTitle() {
		return pTitle;
	}

	public void setpTitle(String pTitle) {
		this.pTitle = pTitle;
	}

	public int getpPrice() {
		return pPrice;
	}

	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}

	public String getpShipping() {
		return pShipping;
	}

	public void setpShipping(String pShipping) {
		this.pShipping = pShipping;
	}

	public String getpState() {
		return pState;
	}

	public void setpState(String pState) {
		this.pState = pState;
	}

	public String getpChange() {
		return pChange;
	}

	public void setpChange(String pChange) {
		this.pChange = pChange;
	}

	public String getpContents() {
		return pContents;
	}

	public void setpContents(String pContents) {
		this.pContents = pContents;
	}

	public String getpCategory() {
		return pCategory;
	}

	public void setpCategory(String pCategory) {
		this.pCategory = pCategory;
	}

	public String getpIsUsed() {
		return pIsUsed;
	}

	public void setpIsUsed(String pIsUsed) {
		this.pIsUsed = pIsUsed;
	}

	public String getpRegdate() {
		return pRegdate;
	}

	public void setpRegdate(String pRegdate) {
		this.pRegdate = pRegdate;
	}

	public String getOrgFileName() {
		return orgFileName;
	}

	public void setOrgFileName(String orgFileName) {
		this.orgFileName = orgFileName;
	}

	public String getSaveFileName() {
		return saveFileName;
	}

	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}

	public long getFileSize() {
		return fileSize;
	}

	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}

	public MultipartFile getMyFile() {
		return myFile;
	}

	public void setMyFile(MultipartFile myFile) {
		this.myFile = myFile;
	}
	
}
