package com.niit.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.BillingAddressDAO;
import com.niit.model.BillingAddress;

@Repository
@Transactional
public class BillingAddressDAOImpl implements BillingAddressDAO{

	@Autowired
	private SessionFactory sessionFactory;
	public void addBillingAddress(BillingAddress billingAddress) {
		sessionFactory.openSession().saveOrUpdate(billingAddress);		
	}

	public void deleteBillingAddress(BillingAddress billingAddress) {
		sessionFactory.openSession().delete(billingAddress);		
	}


	public BillingAddress getBillingAddressBYId(int billingAddressId) {
		return (BillingAddress) sessionFactory.openSession().get(BillingAddress.class, billingAddressId);
	}

	public void editBillingAddress(BillingAddress billingAddress) {
		sessionFactory.openSession().update(billingAddress);		
	}

	@SuppressWarnings("unchecked")
	
	public List<BillingAddress> getAllBillingAddress() {
	return	sessionFactory.openSession().createQuery("from BillingAddress").list();
	}

}
