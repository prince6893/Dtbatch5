package com.niit.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.ShippingAddressDAO;
import com.niit.model.ShippingAddress;

@Repository
@Transactional
public class ShippingAddressDAOImpl implements ShippingAddressDAO {
@Autowired
private SessionFactory sessionFactory;
	public void addShippingAddress(ShippingAddress shippingAddress) {
		sessionFactory.openSession().save(shippingAddress);	
	}

	public void deleteShippingAddress(ShippingAddress shippingAddress) {
		sessionFactory.openSession().delete(shippingAddress);		
	}

	public ShippingAddress getShippingAddressById(int shippingAddressId) {
		return (com.niit.model.ShippingAddress) sessionFactory.openSession().get(ShippingAddress.class, shippingAddressId);
	}

	public void editShippingAddress(ShippingAddress shippingAddress) {
		sessionFactory.openSession().update(shippingAddress);		
	}

	public List getAllShippingAddresses() {
	return 	sessionFactory.openSession().createQuery("from ShippingAddress").list();
	}

}
