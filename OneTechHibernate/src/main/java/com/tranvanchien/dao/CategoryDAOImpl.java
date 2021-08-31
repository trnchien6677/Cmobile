package com.tranvanchien.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;


import com.tranvanchien.model.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

	JdbcTemplate template;  
	  
	public void setTemplate(JdbcTemplate template) {  
	    this.template = template;  
	}  
	private static final Logger logger = LoggerFactory.getLogger(CategoryDAOImpl.class);
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public void addCategory(Category p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Category saved successfully, Category Details=" + p);
		
	}
	public void save(Category p){  
	    String sql="insert into Category(id,name,price,image) values('"+p.getId()+"',"+p.getName()+","+p.getPrice()+",'"+p.getImage()+"')";  

	}  

	public void updateCategory(Category p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Category updated successfully, Category Details=" + p);
	}

	@SuppressWarnings("unchecked")
	public List<Category> listCategory() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Category> categoryList = session.createQuery("from Category").list();
		for (Category p : categoryList) {
			logger.info("Category List::" + p);
		}
		return categoryList;
	}



	public void removeCategory(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Category p = (Category) session.load(Category.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
		logger.info("Category deleted successfully, category details=" + p);
	}

	public Category getCategoryById(int id) {
	    Session session = this.sessionFactory.getCurrentSession();
		Category p = (Category) session.load(Category.class, new Integer(id));
		logger.info("Category loaded successfully, Category details=" + p);
		return p;
	}  


	public Category listProductdetails(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Category p = (Category) session.load(Category.class, new Integer(id));
		logger.info("Category loaded successfully, Category details=" + p);
		return p;
	}
	
	public List<Category> getCategory(){  
	    return template.query("select * from Category",new RowMapper<Category>(){  
	        public Category mapRow(ResultSet rs, int row) throws SQLException {  
	        	Category e=new Category();  
	            e.setId(rs.getInt(1));  
	            e.setName(rs.getString(2));  
	            e.setPrice(rs.getInt(3));  
	            e.setImage(rs.getString(4));  
	            return e;  
	        }  
	    });  

	    

}

	public void save(int id) {
		// TODO Auto-generated method stub
		
	}

	public void save() {
		// TODO Auto-generated method stub
		
	}
}
