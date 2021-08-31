package com.tranvanchien.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;


import com.tranvanchien.dao.NewsDAO;
import com.tranvanchien.model.News;

public class NewsServiceImpl implements NewsService{

	@Autowired
	private NewsDAO newsDAO;
	
	public void setNewsDAO(NewsDAO newsDAO) {
		this.newsDAO = newsDAO;
	}
	
	public void getNewsDAO(NewsDAO newsDAO) {
		this.newsDAO = newsDAO;
	}
	
	@Transactional
	public void addNews(News p) {
		this.newsDAO.addNews(p);
		
	}
	@Transactional
	public List<News> listNews() {
		return this.newsDAO.listNews();
	}

	@Transactional
	public News listNewsdetails(int id) {
		return this.newsDAO.listNewsdetails(id);
	}
	@Transactional
	public void removeNews(int id) {
	this.newsDAO.removeNews(id);
		
	}
	@Transactional
	public News getNewsById(int id) {
		return this.newsDAO.getNewsById(id);
	}
	@Transactional
	public void updateNews(News p) {
		this.newsDAO.updateNews(p);
		
	}

}
