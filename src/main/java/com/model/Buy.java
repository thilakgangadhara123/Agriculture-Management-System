package com.model;

public class Buy {
 public int getCropId() {
		return cropId;
	}
	public void setCropId(int cropId) {
		this.cropId = cropId;
	}
	public String getBuyer() {
		return buyer;
	}
	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
 private  int cropId;
 public Buy() {
	super();
	this.cropId = cropId;
	this.buyer = buyer;
	this.quantity = quantity;
}
 private String buyer;
 private int quantity;

public String toString() {
	return buyer;
	
}
}