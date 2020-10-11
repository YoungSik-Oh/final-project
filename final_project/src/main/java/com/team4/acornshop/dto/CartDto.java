package com.team4.acornshop.dto;

public class CartDto {
	private String id;
	private int pNo;
	private String saveFileName;
	private String pTitle;
	private int pPrice;
	
	public CartDto() {}

	public CartDto(String id, int pNo, String saveFileName, String pTitle, int pPrice) {
		super();
		this.id = id;
		this.pNo = pNo;
		this.saveFileName = saveFileName;
		this.pTitle = pTitle;
		this.pPrice = pPrice;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getSaveFileName() {
		return saveFileName;
	}

	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
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
}