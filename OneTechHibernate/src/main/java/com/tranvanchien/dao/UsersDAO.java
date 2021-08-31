
package com.tranvanchien.dao;

import java.util.List;

import com.tranvanchien.model.Users;

public interface UsersDAO {
	public void addUsers(Users p);

	public void updateUsers(Users p);

	public void removeUsers(int id);

	public List<Users> listUsers();

	public Users getUsersById(int id);

	public Users listUsersdetails(int id);
	
	public Users findByUserName(Users users);
}
