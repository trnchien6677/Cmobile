package com.tranvanchien.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;


import com.tranvanchien.model.Lq_product;
import com.tranvanchien.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {
	private static final Logger logger = LoggerFactory.getLogger(ProductDAOImpl.class);
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	@SuppressWarnings("unchecked")
	public List<Product> listProduct() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Product> productList = session.createQuery("from Product").list();
		for (Product p : productList) {
			logger.info("Product List::" + p);
		}
		return productList;
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> listProduct1() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Product> productList = session.createQuery("from Product").list();
		for (Product p : productList) {
			logger.info("Product List::" + p);
		}
		return productList;
	}
	
	public void removeProduct(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Product p = (Product) session.load(Product.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
		logger.info("Product deleted successfully, Product details=" + p);
		
	}
	
	
	
	
	@SuppressWarnings("unchecked")
	public List<Product> listProductBrand() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Product> productList = session.createQuery("from Product p where p.brand='Samsung'").list();
		for (Product p : productList) {
			logger.info("Product List::" + p);
		}
		return productList;
	}
	public Product getProductById(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public Product listProduct1details(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Product p = (Product) session.load(Product.class, new Integer(id));
		logger.info("Product loaded successfully, Product details=" + p);
		return p;
	}
	
	public Product findProduct1details(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Product p = (Product) session.load(Product.class, new Integer(id));
		logger.info("Product loaded successfully, Product cart=" + p);
		return p;
	}
	
	public List<Lq_product> listProduct2details(int id_product) {
		Session session = this.sessionFactory.getCurrentSession();
		Product pr = (Product) session.load(Product.class, new Integer(id_product));
		List<Lq_product> list1=pr.getLq_product();
		for (Lq_product p : list1) {
			logger.info("Lq_products List::" + p);
		}
		return list1;
	}
	public void addProduct(Product p) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Product saved successfully, Product Details=" + p);
		
	}
	

	
	

}
