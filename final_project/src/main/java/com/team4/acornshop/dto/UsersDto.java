package com.team4.acornshop.dto;

public class UsersDto {
	private String id;
	private String pid;
	private String pwd;
	private String name;
	private String phone;
	private String profile;
	private String addr;
	private String favorite;
	private String regdate;
	private String email;
	private String naveremail;
	private String uniqid;
	private String isadmin;
	private int startRowNum;
	private int endRowNum;
	private int prevNum;
	private int nextNum;
	private String disabled;
	
	public UsersDto() {}

	public UsersDto(String id, String pid, String pwd, String name, String phone, String profile, String addr,
			String favorite, String regdate, String email, String naveremail, String uniqid, String isadmin,
			int startRowNum, int endRowNum, int prevNum, int nextNum, String disabled) {
		super();
		this.id = id;
		this.pid = pid;
		this.pwd = pwd;
		this.name = name;
		this.phone = phone;
		this.profile = profile;
		this.addr = addr;
		this.favorite = favorite;
		this.regdate = regdate;
		this.email = email;
		this.naveremail = naveremail;
		this.uniqid = uniqid;
		this.isadmin = isadmin;
		this.startRowNum = startRowNum;
		this.endRowNum = endRowNum;
		this.prevNum = prevNum;
		this.nextNum = nextNum;
		this.disabled = disabled;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getFavorite() {
		return favorite;
	}

	public void setFavorite(String favorite) {
		this.favorite = favorite;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNaveremail() {
		return naveremail;
	}

	public void setNaveremail(String naveremail) {
		this.naveremail = naveremail;
	}

	public String getUniqid() {
		return uniqid;
	}

	public void setUniqid(String uniqid) {
		this.uniqid = uniqid;
	}

	public String getIsadmin() {
		return isadmin;
	}

	public void setIsadmin(String isadmin) {
		this.isadmin = isadmin;
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

	public String getDisabled() {
		return disabled;
	}

	public void setDisabled(String disabled) {
		this.disabled = disabled;
	}

	
}

