package com.tranvanchien.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "BANNER")
public class Banner {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "image")
	private String image;
	@Column(name = "title")
	private String title;
	@Column(name = "des")
	private String des;
	@Column(name = "price")
	private int price;
	@Column(name = "price_net")
	private int price_net;
	@Column(name = "deal")
	private boolean deal;





	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPrice_net() {
		return price_net;
	}
	public void setPrice_net(int price_net) {
		this.price_net = price_net;
	}
	public boolean isDeal() {
		return deal;
	}
	public void setDeal(boolean deal) {
		this.deal = deal;
	}
	@Override
	public String toString() {
		return "Banner [id=" + id + ", image=" + image + ",title=" + title + ",des=" + des + ",price =" + price +",price_net=" + price_net +",deal=" + deal + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Banner other = (Banner) obj;
		if (id != other.id)
			return false;
		return true;
	}


}
