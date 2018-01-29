package com.appfone.carro.pojo;

import com.mysql.jdbc.Blob;

public class Package1 {

	
	private String pack_name;
	private String model_name;
	private String price;
	private Blob img;
	private String sight_seen;
	
	public String getPack_name() {
		return pack_name;
	}
	public void setPack_name(String pack_name) {
		this.pack_name = pack_name;
	}
	public String getModel_name() {
		return model_name;
	}
	public void setModel_name(String model_name) {
		this.model_name = model_name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public Blob getImg() {
		return img;
	}
	public void setImg(Blob img) {
		this.img = img;
	}
	public String getSight_seen() {
		return sight_seen;
	}
	public void setSight_seen(String sight_seen) {
		this.sight_seen = sight_seen;
	}
}
