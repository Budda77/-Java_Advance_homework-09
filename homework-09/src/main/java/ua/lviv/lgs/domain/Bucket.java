package ua.lviv.lgs.domain;

import java.util.Date;

public class Bucket {
	private Integer id;
	private Integer userId;
	private Integer productId;
	private Date purchaseDate;
	
	public Bucket(Integer userId, Integer productId, Date purchaseDate) {
		super();
		this.userId = userId;
		this.productId = productId;
		this.purchaseDate = purchaseDate;
	}

	public Bucket(Integer id, Integer userId, Integer productId, Date purchaseDate) {
		super();
		this.id = id;
		this.userId = userId;
		this.productId = productId;
		this.purchaseDate = purchaseDate;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public Date getPurchaseDate() {
		return purchaseDate;
	}

	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	
	

}
