package com.tranvanchien.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.tranvanchien.dao.MenuDAO;

import com.tranvanchien.model.Menu;


@Service
public class MenuServiceImpl implements MenuService {
	@Autowired
	private MenuDAO menuDAO;

	public void setMenuDAO(MenuDAO menuDAO) {
		this.menuDAO = menuDAO;
	}

	

	@Transactional
	public List<Menu> listMenu() {
		return this.menuDAO.listMenu();
	}
	@Transactional
	public Menu getMenuById(int id) {
	return this.menuDAO.getMenuById(id);
	}



}
