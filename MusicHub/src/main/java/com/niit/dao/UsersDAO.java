package com.niit.dao;

import java.util.List;

import com.niit.model.Users;

public interface UsersDAO {
public List<Users> list();
	
	public Users get(int id);
	
	public void saveOrUpdate(Users users);
	
	public void delete(int id);
	
	public Users getUserByName(String username);
	
	public void addUser(Users user);
}
