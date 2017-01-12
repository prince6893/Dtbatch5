package com.niit.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.BillingAddressDAO;
import com.niit.model.BillingAddress;
import com.niit.service.BillingAddressService;

@Service
@Transactional
public class BillingAddressServiceImpl implements BillingAddressService{

	@Autowired
	private BillingAddressDAO billingAddressDAO;
	 
	public void addBillingAddress(BillingAddress billingAddress) {
		billingAddressDAO.addBillingAddress(billingAddress);		
	}

	 
	public void deleteBillingAddress(BillingAddress billingAddress) {
		billingAddressDAO.deleteBillingAddress(billingAddress);		
	}

	 
	public BillingAddress getBillingAddressBYId(int billingAddressId) {
		return billingAddressDAO.getBillingAddressBYId(billingAddressId);
	}

	 
	public void editBillingAddress(BillingAddress billingAddress) {
		billingAddressDAO.editBillingAddress(billingAddress);		
	}

	 
	public List<BillingAddress> getAllBillingAddress() {
		return billingAddressDAO.getAllBillingAddress();
	}

}
