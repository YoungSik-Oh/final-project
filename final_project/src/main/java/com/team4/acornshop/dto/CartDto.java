package com.team4.acornshop.dto;

public class CartDto {
	private int cartId;
	private String id;
	private String pId;
	private String pMainImage;
	private String pTitle;
	private int pStock;
	private int pPrice;
	
	public CartDto() {}
	
	public CartDto(int cartId, String id, String pId, String pMainImage, String pTitle, int pStock,
			int pPrice) {
		super();
		this.cartId = cartId;
		this.id = id;
		this.pId = pId;
		this.pMainImage = pMainImage;
		this.pTitle = pTitle;
		this.pStock = pStock;
		this.pPrice = pPrice;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public String getid() {
		return id;
	}

	public void setid(String id) {
		this.id = id;
	}

	public String getpId() {
		return pId;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public String getpMainImage() {
		return pMainImage;
	}

	public void setpMainImage(String pMainImage) {
		this.pMainImage = pMainImage;
	}

	public String getpTitle() {
		return pTitle;
	}

	public void setpTitle(String pTitle) {
		this.pTitle = pTitle;
	}

	public int getpStock() {
		return pStock;
	}

	public void setpStock(int pStock) {
		this.pStock = pStock;
	}

	public int getpPrice() {
		return pPrice;
	}

	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}
}
