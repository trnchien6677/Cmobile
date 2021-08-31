package com.tranvanchien.dao;

import java.util.List;

import com.tranvanchien.model.Menu;

public interface MenuDAO {
	public List<Menu> listMenu();
	public Menu getMenuById(int id);
}
