package com.niit.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.UsersOrderDAO;
import com.niit.model.UsersOrder;

@Repository
@Transactional
public class UsersOrderDAOImpl implements UsersOrderDAO{
	  @Autowired
	    private SessionFactory sessionFactory;

	    public void addUsersOrder(UsersOrder usersOrder){
	        Session session = sessionFactory.getCurrentSession();
	        session.saveOrUpdate(usersOrder);
	        session.flush();
	    }

}
