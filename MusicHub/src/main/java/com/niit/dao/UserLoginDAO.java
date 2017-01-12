package com.niit.dao;

import java.util.List;

import com.niit.model.UserLogin;

public interface UserLoginDAO {
public void addUserLogin(UserLogin userLogin);
public void deleteUserLogin(UserLogin userLogin);
public UserLogin getUserLoginById(int usersId);
public void editUserLogin(UserLogin userLogin);
public List getAllUserLogin();
}
