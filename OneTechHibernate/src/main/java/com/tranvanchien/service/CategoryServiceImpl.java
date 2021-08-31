package com.tranvanchien.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tranvanchien.dao.CategoryDAO;
import com.tranvanchien.model.Category;


@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDAO categoryDAO;

	public void setCategoryDAO(CategoryDAO categoryDAO) {
		this.categoryDAO = categoryDAO;
	}
	
	public void getCategoryDAO(CategoryDAO categoryDAO) {
		this.categoryDAO = categoryDAO;
	}

	@Transactional
	public void addCategory(Category p) {
		this.categoryDAO.addCategory(p);
	}

	@Transactional
	public void updateCategory(Category p) {
		this.categoryDAO.updateCategory(p);
	}
	
	

	@Transactional
	public List<Category> listCategory() {
		return this.categoryDAO.listCategory();
	}
	@Transactional
	public Category getCategoryById(int id) {
	return this.categoryDAO.getCategoryById(id);
	}
	
	@Transactional
	public void removeCategory(int id) {
		this.categoryDAO.removeCategory(id);
	}
	@Transactional
	public Category listProductdetails(int id) {
		 return this.categoryDAO.listProductdetails(id);
	}

	public Category getCategory1ById(int id) {
		return null;
	}
	@Transactional
	public void save(Category p) {
		this.categoryDAO.save();
	}
	
	



}
