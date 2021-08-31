package com.tranvanchien.dao;

import java.util.List;

import com.tranvanchien.model.Category;
import com.tranvanchien.model.News;




public interface NewsDAO {
	public void addNews(News p);
	public List<News> listNews();
	public void removeNews(int id);
	public News listNewsdetails(int id);
	public News getNewsById(int id);
	public void updateNews(News p);
}
