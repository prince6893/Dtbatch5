package com.niit.service;

import java.util.List;

import com.niit.model.ShippingAddress;

public interface ShippingAddressService {
	public void addShippingAddress(ShippingAddress shippingAddress);
	public void deleteShippingAddress(ShippingAddress shippingAddress);
	public ShippingAddress getShippingAddressById(int shippingAddressId);
	public void editShippingAddress(ShippingAddress shippingAddress);
	public List getAllShippingAddresses();
}
