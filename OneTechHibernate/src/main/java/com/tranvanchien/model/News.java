package com.tranvanchien.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "NEWST")
public class News {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "title")
	private String title;
	@Column(name = "descrip")
	private String descrip;
	@Column(name = "demo")
	private String demo;
	@Column(name = "image")
	private String image;
	

	public News() {
	}




	public News(int id, String title, String descrip, String demo, String image) {
		this.id = id;
		this.title = title;
		this.descrip = descrip;
		this.demo = demo;
		this.image = image;
	}





	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getDescrip() {
		return descrip;
	}



	public void setDescrip(String descrip) {
		this.descrip = descrip;
	}
	



	public String getDemo() {
		return demo;
	}




	public void setDemo(String demo) {
		this.demo = demo;
	}




	public String getImage() {
		return image;
	}




	public void setImage(String image) {
		this.image = image;
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
		News other = (News) obj;
		if (id != other.id)
			return false;
		return true;
	}
	
}
