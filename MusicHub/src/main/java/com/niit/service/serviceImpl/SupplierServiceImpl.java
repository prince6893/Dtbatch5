package com.niit.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;
import com.niit.service.SupplierService;

@Service
@Transactional
public class SupplierServiceImpl implements  SupplierService{
@Autowired
private SupplierDAO supplierDAO;

public void addSupplier(Supplier supplier) {
	// TODO Auto-generated method stub
	supplierDAO.addSupplier(supplier);
}

public void deleteSupplier(int sid) {
	// TODO Auto-generated method stub
	supplierDAO.deleteSupplier(sid);
}

public Supplier getSupplierById(int sid) {
	// TODO Auto-generated method stub
	return supplierDAO.getSupplierById(sid);
}

public void editSupplier(Supplier supplier) {
	// TODO Auto-generated method stub
	supplierDAO.editSupplier(supplier);
}

public List getAllSupplier() {
	// TODO Auto-generated method stub
	return supplierDAO.getAllSupplier();
}


public Supplier getByName(String supname) {
	return supplierDAO.getByName(supname);
}
}
