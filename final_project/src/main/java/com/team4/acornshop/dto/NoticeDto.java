package com.team4.acornshop.dto;

public class NoticeDto {
	private int nNo;
	private String nContent;
	private String nTitle;
	private String regdate;
	private int nViewCount;
	private int startRowNum;
	private int endRowNum;
	private int prevNum; //이전글의 글번호
	private int nextNum; //다음글의 글번호
	
	public NoticeDto() {}

	public NoticeDto(int nNo, String nContent, String nTitle, String regdate, int nViewCount, int startRowNum,
			int endRowNum, int prevNum, int nextNum) {
		super();
		this.nNo = nNo;
		this.nContent = nContent;
		this.nTitle = nTitle;
		this.regdate = regdate;
		this.nViewCount = nViewCount;
		this.startRowNum = startRowNum;
		this.endRowNum = endRowNum;
		this.prevNum = prevNum;
		this.nextNum = nextNum;
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

	public int getStartRowNum() {
		return startRowNum;
	}

	public void setStartRowNum(int startRowNum) {
		this.startRowNum = startRowNum;
	}

	public int getEndRowNum() {
		return endRowNum;
	}

	public void setEndRowNum(int endRowNum) {
		this.endRowNum = endRowNum;
	}

	public int getPrevNum() {
		return prevNum;
	}

	public void setPrevNum(int prevNum) {
		this.prevNum = prevNum;
	}

	public int getNextNum() {
		return nextNum;
	}

	public void setNextNum(int nextNum) {
		this.nextNum = nextNum;
	}

}
