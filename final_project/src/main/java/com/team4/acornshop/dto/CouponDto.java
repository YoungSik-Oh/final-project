package com.team4.acornshop.dto;

public class CouponDto {
	private int cNo; // 쿠폰 아이디 값
	private String cSerial_Number; // 쿠폰 일련번호
	private String cName; // 쿠폰 명
	private String cDiscount_Amount; // 쿠폰 할인액(률)
	private String id; // 쿠폰 사용자(회원아이디값)
	private String cIsUsed; // 쿠폰 사용여부
	private String cRegdate; // 쿠폰 발급일자
	private String cExpiration_Date; // 쿠폰 만료일자
	
	public CouponDto() {}

	public CouponDto(int cNo, String cSerial_Number, String cName, String cDiscount_Amount, String id, String cIsUsed,
			String cRegdate, String cExpiration_Date) {
		super();
		this.cNo = cNo;
		this.cSerial_Number = cSerial_Number;
		this.cName = cName;
		this.cDiscount_Amount = cDiscount_Amount;
		this.id = id;
		this.cIsUsed = cIsUsed;
		this.cRegdate = cRegdate;
		this.cExpiration_Date = cExpiration_Date;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	public String getcSerial_Number() {
		return cSerial_Number;
	}

	public void setcSerial_Number(String cSerial_Number) {
		this.cSerial_Number = cSerial_Number;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getcDiscount_Amount() {
		return cDiscount_Amount;
	}

	public void setcDiscount_Amount(String cDiscount_Amount) {
		this.cDiscount_Amount = cDiscount_Amount;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getcIsUsed() {
		return cIsUsed;
	}

	public void setcIsUsed(String cIsUsed) {
		this.cIsUsed = cIsUsed;
	}

	public String getcRegdate() {
		return cRegdate;
	}

	public void setcRegdate(String cRegdate) {
		this.cRegdate = cRegdate;
	}

	public String getcExpiration_Date() {
		return cExpiration_Date;
	}

	public void setcExpiration_Date(String cExpiration_Date) {
		this.cExpiration_Date = cExpiration_Date;
	}
	
	
	
}