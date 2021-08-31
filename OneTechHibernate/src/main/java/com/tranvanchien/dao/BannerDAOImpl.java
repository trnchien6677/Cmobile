package com.tranvanchien.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;


import com.tranvanchien.model.Banner;

@Repository
public class BannerDAOImpl implements BannerDAO {
	private static final Logger logger = LoggerFactory.getLogger(BannerDAOImpl.class);
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	@SuppressWarnings("unchecked")
	public List<Banner> listBanner() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Banner> bannerList = session.createQuery("from Banner").list();
		for (Banner p : bannerList) {
			logger.info("Menu List::" + p);
		}
		return bannerList;
	}
	@SuppressWarnings("unchecked")
	public List<Banner> listBannerDeal() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Banner> bannerList = session.createQuery("from Banner p where p.deal='true'").list();
		for (Banner p : bannerList) {
			logger.info("Menu List::" + p);
		}
		return bannerList;
	}

}
