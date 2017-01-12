package com.niit.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.AuthorityDAO;
import com.niit.model.Authority;
@Repository
@Transactional
public class AuthorityDAOImpl implements AuthorityDAO{
@Autowired
private SessionFactory sessionFactory; 
	public void addAuthority(Authority authority) {
		// TODO Auto-generated method stub
		sessionFactory.openSession().save(authority);
	}

	public void deleteAuthority(Authority authority) {
		// TODO Auto-generated method stub
		sessionFactory.openSession().delete(authority);
	}

	public Authority getAuthorityById(int authoritiesId) {
		// TODO Auto-generated method stub
		return (Authority) sessionFactory.openSession().get(Authority.class, authoritiesId);
	}

	public void editAuthority(Authority authority) {
		// TODO Auto-generated method stub
		sessionFactory.openSession().update(authority);
	}

	public List getAllAuthority() {
		// TODO Auto-generated method stub
		return sessionFactory.openSession().createQuery("from Authority").list();
	}

}
