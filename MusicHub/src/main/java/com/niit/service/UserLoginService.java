package com.niit.service;

import java.util.List;

import com.niit.model.UserLogin;

public interface UserLoginService {
	public void addUserLogin(UserLogin userLogin);
	public void deleteUserLogin(UserLogin userLogin);
	public UserLogin getUserLoginById(int usersId);
	public void editUserLogin(UserLogin userLogin);
	public List getAllUserLogin();
}
