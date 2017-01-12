package com.niit.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.ProductDAO;
import com.niit.model.Product;
import com.niit.service.ProductService;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;
	 
	public void addProduct(Product product) {
		productDAO.addProduct(product);		
	}

	 
	public void deleteProduct(int pid) {
		productDAO.deleteProduct(pid);		
	}

	 
	public Product getProductById(int pid) {
		return productDAO.getProductById(pid);
	}

	 
	public void editProduct(Product product) {
		productDAO.editProduct(product);		
	}

	 
	public List<Product> getAllProduct() {
		return productDAO.getAllProduct();
	}

}
