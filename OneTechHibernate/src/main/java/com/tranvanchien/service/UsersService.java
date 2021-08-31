
package com.tranvanchien.service;


import java.util.List;


import com.tranvanchien.model.Users;

public interface UsersService {
	public void addUsers(Users p);
	public void checkUsers(Users p);

	public void updateUsers(Users p);

	public void removeUsers(int id);

	public List<Users> listUsers();

	public Users getUsersById(int id);

	public Users listUsersdetails(int id);
	public Users isUsers(Users loginBean);

}
