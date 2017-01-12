package com.niit.dao;

import java.util.List;

import com.niit.model.Authority;
import com.niit.model.Supplier;

public interface SupplierDAO {
	public void addSupplier(Supplier supplier);
	public void deleteSupplier(int sid);
	public Supplier getSupplierById(int sid);
	public void editSupplier(Supplier supplier); 
	public List getAllSupplier();
	public Supplier getByName(String supname);
}
