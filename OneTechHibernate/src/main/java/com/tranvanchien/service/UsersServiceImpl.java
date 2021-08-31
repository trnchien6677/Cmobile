package com.tranvanchien.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tranvanchien.dao.UsersDAO;

import com.tranvanchien.model.Users;

@Service
public class UsersServiceImpl implements UsersService {
	@Autowired
	private UsersDAO usersDAO;

	public void setUsersDAO(UsersDAO usersDAO) {
		this.usersDAO = usersDAO;
	}

	public void getUsersDAO(UsersDAO usersDAO) {
		this.usersDAO = usersDAO;
	}

	@Transactional
	public void addUsers(Users p) {
		p.setPassword(BCrypt.hashpw(p.getPassword(), BCrypt.gensalt(12)));
		this.usersDAO.addUsers(p);
	}

	@Transactional
	public void updateUsers(Users p) {
		this.usersDAO.updateUsers(p);
	}

	@Transactional
	public List<Users> listUsers() {
		return this.usersDAO.listUsers();
	}

	@Transactional
	public Users getUsersById(int id) {
		return this.usersDAO.getUsersById(id);
	}

	@Transactional
	public void removeUsers(int id) {
		this.usersDAO.removeUsers(id);
	}

	@Transactional
	public Users listUsersdetails(int id) {
		return this.usersDAO.listUsersdetails(id);
	}

	public Users getUsers1ById(int id) {
		return null;
	}

	public void checkUsers(Users p) {

	}

	@Transactional
	public Users isUsers(Users users) {
		String pass = users.getPassword();
		Users user = usersDAO.findByUserName(users);
		if (user != null && BCrypt.checkpw(pass, user.getPassword())) {
			return users;
		} else {
			return null;
		}
	}
	
}