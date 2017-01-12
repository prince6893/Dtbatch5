package com.niit.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.UserLoginDAO;
import com.niit.model.UserLogin;

@Repository
@Transactional
public class UserLoginDAOImpl implements UserLoginDAO{
@Autowired
private SessionFactory sessionFactory;
	public void addUserLogin(UserLogin userLogin) {
		sessionFactory.openSession().save(userLogin);		
	}

	public void deleteUserLogin(UserLogin userLogin) {
		sessionFactory.openSession().delete(userLogin);		
	}

	public UserLogin getUserLoginById(int usersId) {
		return (UserLogin) sessionFactory.openSession().get(UserLogin.class, usersId);
	}

	public void editUserLogin(UserLogin userLogin) {
		sessionFactory.openSession().update(userLogin);
		
	}

	public List getAllUserLogin() {
		return sessionFactory.openSession().createQuery("from UserLogin").list();
	}

}
