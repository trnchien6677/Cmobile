package com.tranvanchien.service;

import java.util.List;

import com.tranvanchien.model.Category;



public interface CategoryService {
	public void addCategory(Category p);
	public void updateCategory(Category p);
	public List<Category> listCategory();
	public Category getCategoryById(int id);
	public void removeCategory(int id);
	public Category getCategory1ById(int id);
	public Category listProductdetails(int id);
	public void save(Category p);
	}

/*public interface PhoneService {
public void addPhone(Phone p);
public void updatePhone(Phone p);
public List<Phone> listPhones();
public Phone getPhoneById(int id);
public void removePhone(int id);
}
*/