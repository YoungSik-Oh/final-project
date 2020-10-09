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
	private String isAdmin;
	
	public UsersDto() {}

	public UsersDto(String id, String pid, String pwd, String name, String phone, String profile, String addr,
			String favorite, String regdate, String email, String naveremail, String uniqid, String isAdmin) {
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
		this.isAdmin = isAdmin;
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

	public String getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(String isAdmin) {
		this.isAdmin = isAdmin;
	}

	
	
}

