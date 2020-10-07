package com.gura.spring05.product.dto;

public class ProductDto {
	private int pNo; // 상품 아이디
	private String pCategory; // 카테고리
	private String pTitle; // 상품 이름
	private int pPrice; // 상품가격
	private int pStart; // 시작 가격
	private int pCurrent; // 현재 가격
	private int pTender; // 입찰 가격
	private String pMainimage; // 상품이미지(썸네일)
	private String pContents; // 내용
	private String pImage1; // 상품 이미지1
	private String pImage2; // 상품 이미지2
	private String pImage3; // 상품 이미지3
	private String pImage4; // 상품 이미지4
	private String pIsUsed; // 중고 여부
	private String pState; // 상품 상태
	private String pRegdate; // 등록일자
	
	public ProductDto() {}
	
	public ProductDto(int pNo, String pCategory, String pTitle, int pPrice, int pStart, int pCurrent, int pTender,
			String pMainimage, String pContents, String pImage1, String pImage2, String pImage3, String pImage4,
			String pIsUsed, String pState, String pRegdate) {
		super();
		this.pNo = pNo;
		this.pCategory = pCategory;
		this.pTitle = pTitle;
		this.pPrice = pPrice;
		this.pStart = pStart;
		this.pCurrent = pCurrent;
		this.pTender = pTender;
		this.pMainimage = pMainimage;
		this.pContents = pContents;
		this.pImage1 = pImage1;
		this.pImage2 = pImage2;
		this.pImage3 = pImage3;
		this.pImage4 = pImage4;
		this.pIsUsed = pIsUsed;
		this.pState = pState;
		this.pRegdate = pRegdate;
	}
	
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public String getpCategory() {
		return pCategory;
	}
	public void setpCategory(String pCategory) {
		this.pCategory = pCategory;
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
	public int getpStart() {
		return pStart;
	}
	public void setpStart(int pStart) {
		this.pStart = pStart;
	}
	public int getpCurrent() {
		return pCurrent;
	}
	public void setpCurrent(int pCurrent) {
		this.pCurrent = pCurrent;
	}
	public int getpTender() {
		return pTender;
	}
	public void setpTender(int pTender) {
		this.pTender = pTender;
	}
	public String getpMainimage() {
		return pMainimage;
	}
	public void setpMainimage(String pMainimage) {
		this.pMainimage = pMainimage;
	}
	public String getpContents() {
		return pContents;
	}
	public void setpContents(String pContents) {
		this.pContents = pContents;
	}
	public String getpImage1() {
		return pImage1;
	}
	public void setpImage1(String pImage1) {
		this.pImage1 = pImage1;
	}
	public String getpImage2() {
		return pImage2;
	}
	public void setpImage2(String pImage2) {
		this.pImage2 = pImage2;
	}
	public String getpImage3() {
		return pImage3;
	}
	public void setpImage3(String pImage3) {
		this.pImage3 = pImage3;
	}
	public String getpImage4() {
		return pImage4;
	}
	public void setpImage4(String pImage4) {
		this.pImage4 = pImage4;
	}
	public String getpIsUsed() {
		return pIsUsed;
	}
	public void setpIsUsed(String pIsUsed) {
		this.pIsUsed = pIsUsed;
	}
	public String getpState() {
		return pState;
	}
	public void setpState(String pState) {
		this.pState = pState;
	}
	public String getpRegdate() {
		return pRegdate;
	}
	public void setpRegdate(String pRegdate) {
		this.pRegdate = pRegdate;
	}
	
	
	
	

	
	
}
