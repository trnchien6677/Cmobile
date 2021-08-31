
package com.tranvanchien.dao;




import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;


import com.tranvanchien.model.Users;




@Repository
public class UsersDAOImpl implements UsersDAO {
	
	JdbcTemplate template;  
	  
	public void setTemplate(JdbcTemplate template) {  
	    this.template = template;  
	}  
	private static final Logger logger = LoggerFactory.getLogger(UsersDAOImpl.class);
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	public void addUsers(Users p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Users saved successfully, Users Details=" + p);
		}
	
	
	



	public void updateUsers(Users p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Users updated successfully, Users Details=" + p);
	}

	@SuppressWarnings("unchecked")
	public List<Users> listUsers() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Users> usersList = session.createQuery("from Users").list();
		for (Users p : usersList) {
			logger.info("Users List::" + p);
		}
		return usersList;
	}



	public void removeUsers(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Users p = (Users) session.load(Users.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
		logger.info("Users deleted successfully, users details=" + p);
	}

	public Users getUsersById(int id) {
		// TODO Auto-generated method stub
		return null;
	}


	public Users listUsersdetails(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Users p = (Users) session.load(Users.class, new Integer(id));
		logger.info("Users loaded successfully, Users details=" + p);
		return p;
	}
	
	public List<Users> getUsers(){  
	    return template.query("select * from Users",new RowMapper<Users>(){  
	        public Users mapRow(ResultSet rs, int row) throws SQLException {  
	        	Users e=new Users();  
	            e.setId(rs.getInt(1));  
	            e.setName(rs.getString(2));  
	            e.setPassword(rs.getString(3));  
	            return e;  
	        }  
	    });  

	    

}
	@SuppressWarnings("unchecked")
	public Users findByUserName(Users users) {
	      Session session = null;
	        try 
	        {
	            session = sessionFactory.openSession();
	            List<Users> getusers = new ArrayList<Users>();
	            
	            getusers = session.createQuery("from Users where name=?").setParameter(0, users.getName()).list();
	            if (getusers.size() > 0)
	            {
	                return getusers.get(0);
	            }
	        } catch (HibernateException e) {
	            e.printStackTrace();
	        }
	        return null;
	}



}