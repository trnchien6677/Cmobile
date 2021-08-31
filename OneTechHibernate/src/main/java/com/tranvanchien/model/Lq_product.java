package com.tranvanchien.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "LQ_PRODUCTS")
public class Lq_product {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	protected int id;
	@Column(name = "id_product")
	protected int id_product;
	@Column(name = "id_productlq")
	protected int id_productlq;
	
	
	public Lq_product(int id, int id_product, int id_productlq) {
		this.id = id;
		this.id_product = id_product;
		this.id_productlq = id_productlq;
	}
	
	public Lq_product() {	
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_product() {
		return id_product;
	}

	public void setId_product(int id_product) {
		this.id_product = id_product;
	}

	public int getId_productlq() {
		return id_productlq;
	}

	public void setId_productlq(int id_productlq) {
		this.id_productlq = id_productlq;
	}
		
	
}
