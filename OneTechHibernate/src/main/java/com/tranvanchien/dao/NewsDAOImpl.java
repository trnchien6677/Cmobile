package com.tranvanchien.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import com.tranvanchien.model.News;

public class NewsDAOImpl implements NewsDAO {
	
	
	private static final Logger logger = LoggerFactory.getLogger(NewsDAOImpl.class);

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public void addNews(News p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("News saved successfully, News Details=" + p);
	}

	@SuppressWarnings("unchecked")
	public List<News> listNews() {
		Session session = this.sessionFactory.getCurrentSession();
		List<News> newsList = session.createQuery("from News").list();
		for (News p : newsList) {
			logger.info("News List::" + p);
		}
		return newsList;
	}

	

	public News listNewsdetails(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		News p = (News) session.load(News.class, new Integer(id));
		logger.info("News loaded successfully, News details=" + p);
		return p;
	}

	public void removeNews(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		News p = (News) session.load(News.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
		logger.info("News deleted successfully, News details=" + p);
		
	}

	public News getNewsById(int id){
		Session session = this.sessionFactory.getCurrentSession();
		 News p = (News) session.load(News.class, new Integer(id));
			logger.info("News loaded successfully, News details=" + p);
			return p;
	}

	public void updateNews(News p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("News updated successfully, News Details=" + p);
		
	}

}
