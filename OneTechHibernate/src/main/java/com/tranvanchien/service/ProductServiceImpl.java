package com.tranvanchien.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.tranvanchien.dao.ProductDAO;
import com.tranvanchien.model.Lq_product;
import com.tranvanchien.model.Product;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDAO productDAO;

	public void setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}

	

	@Transactional
	public List<Product> listProduct() {
		return this.productDAO.listProduct();
	}
	@Transactional
	public List<Product> listProductBrand() {
		return this.productDAO.listProductBrand();
	}
	@Transactional
	public Product getProductById(int id) {
	return this.productDAO.getProductById(id);
	}


	@Transactional
	public Product listProduct1details(int id) {
		 return this.productDAO.listProduct1details(id);
	}



	public List<Product> listProduct1() {
		return this.productDAO.listProduct();
	}



	@Transactional
	public List<Lq_product> listProduct2details(int id_product) {
		return this.productDAO.listProduct2details(id_product);
	}


	@Transactional
	public void removeProduct(int id) {
		this.productDAO.removeProduct(id);
		
	}



	public void addProduct(Product p) {
		this.productDAO.addProduct(p);
		
	}



}

