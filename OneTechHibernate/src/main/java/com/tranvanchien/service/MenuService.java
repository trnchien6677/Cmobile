package com.tranvanchien.service;

import java.util.List;

import com.tranvanchien.model.Menu;

public interface MenuService {
	public List<Menu> listMenu();
	public Menu getMenuById(int id);
}
