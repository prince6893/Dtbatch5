package com.niit.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.ShippingAddressDAO;
import com.niit.model.ShippingAddress;
import com.niit.service.ShippingAddressService;

@Service
@Transactional
public class ShippingAddressServiceImpl implements ShippingAddressService{
@Autowired
private ShippingAddressDAO shippingAddressDAO;

public void addShippingAddress(ShippingAddress shippingAddress) {
	// TODO Auto-generated method stub
	shippingAddressDAO.addShippingAddress(shippingAddress);
}

public void deleteShippingAddress(ShippingAddress shippingAddress) {
	// TODO Auto-generated method stub
	shippingAddressDAO.deleteShippingAddress(shippingAddress);
}

public ShippingAddress getShippingAddressById(int shippingAddressId) {
	// TODO Auto-generated method stub
	return shippingAddressDAO.getShippingAddressById(shippingAddressId);
}

public void editShippingAddress(ShippingAddress shippingAddress) {
	// TODO Auto-generated method stub
	shippingAddressDAO.editShippingAddress(shippingAddress);
}

public List getAllShippingAddresses() {
	// TODO Auto-generated method stub
	return shippingAddressDAO.getAllShippingAddresses();
}
}
