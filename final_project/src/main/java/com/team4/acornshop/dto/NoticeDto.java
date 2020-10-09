package com.team4.acornshop.dto;

public class NoticeDto {
	private int nNo;
	private String nContent;
	private String nTitle;
	private String regdate;
	private int nViewCount;
	
	public NoticeDto() {}

	public NoticeDto(int nNo, String nContent, String nTitle, String regdate, int nViewCount) {
		super();
		this.nNo = nNo;
		this.nContent = nContent;
		this.nTitle = nTitle;
		this.regdate = regdate;
		this.nViewCount = nViewCount;
	}

	public int getnNo() {
		return nNo;
	}

	public void setnNo(int nNo) {
		this.nNo = nNo;
	}

	public String getnContent() {
		return nContent;
	}

	public void setnContent(String nContent) {
		this.nContent = nContent;
	}

	public String getnTitle() {
		return nTitle;
	}

	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getnViewCount() {
		return nViewCount;
	}

	public void setnViewCount(int nViewCount) {
		this.nViewCount = nViewCount;
	}
}
