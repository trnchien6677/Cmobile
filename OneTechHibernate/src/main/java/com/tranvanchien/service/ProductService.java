package com.tranvanchien.service;

import java.util.List;

import com.tranvanchien.model.Lq_product;
import com.tranvanchien.model.News;
import com.tranvanchien.model.Product;

public interface ProductService {
	public List<Product> listProduct();
	public List<Product> listProduct1();
	public List<Product> listProductBrand();
	public Product getProductById(int id);
	public Product listProduct1details(int id);
	public List<Lq_product> listProduct2details(int id_product);
	public void removeProduct(int id);
	public void addProduct(Product p);
}
