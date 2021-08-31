package com.tranvanchien.dao;

import java.util.List;

import com.tranvanchien.model.Category;

public interface CategoryDAO {
	public void addCategory(Category p);

	public void updateCategory(Category p);
	public void removeCategory(int id);
	
	public List<Category> listCategory();
	public Category getCategoryById(int id);
	

	public Category listProductdetails(int id);

	public void save();


}
