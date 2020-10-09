package com.team4.acornshop.dto;

public class ProductDto {
	private String seller;
	private int pId;
	private String pCategory;
	private String pTitle;
	private int pPrice;
	private String pMainImage;
	private String pContents;
	private String pImage1;
	private String pImage2;
	private String pImage3;
	private String pImage4;
	private String pIsUsed;
	private String pRegdate;
	private int pStock;
	
	public ProductDto() {}

	public ProductDto(String seller, int pId, String pCategory, String pTitle, int pPrice, String pMainImage, String pContents,
			String pImage1, String pImage2, String pImage3, String pImage4, String pIsUsed, String pRegdate,
			int pStock) {
		super();
		this.seller = seller;
		this.pId = pId;
		this.pCategory = pCategory;
		this.pTitle = pTitle;
		this.pPrice = pPrice;
		this.pMainImage = pMainImage;
		this.pContents = pContents;
		this.pImage1 = pImage1;
		this.pImage2 = pImage2;
		this.pImage3 = pImage3;
		this.pImage4 = pImage4;
		this.pIsUsed = pIsUsed;
		this.pRegdate = pRegdate;
		this.pStock = pStock;
	}
	public String getseller() {
		return seller;
	}
	public void setseller(String seller) {
		this.seller = seller;
	}
	
	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
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

	public String getpMainImage() {
		return pMainImage;
	}

	public void setpMainImage(String pMainImage) {
		this.pMainImage = pMainImage;
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

	public String getpRegdate() {
		return pRegdate;
	}

	public void setpRegdate(String pRegdate) {
		this.pRegdate = pRegdate;
	}

	public int getpStock() {
		return pStock;
	}

	public void setpStock(int pStock) {
		this.pStock = pStock;
	}
	
}
