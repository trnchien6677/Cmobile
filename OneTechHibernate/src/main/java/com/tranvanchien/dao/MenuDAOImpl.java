package com.tranvanchien.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;


import com.tranvanchien.model.Menu;

@Repository
public class MenuDAOImpl implements MenuDAO {
	private static final Logger logger = LoggerFactory.getLogger(MenuDAOImpl.class);
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	@SuppressWarnings("unchecked")
	public List<Menu> listMenu() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Menu> menuList = session.createQuery("from Menu").list();
		for (Menu p : menuList) {
			logger.info("Menu List::" + p);
		}
		return menuList;
	}
	public Menu getMenuById(int id) {
		// TODO Auto-generated method stub
		return null;
	}
}
