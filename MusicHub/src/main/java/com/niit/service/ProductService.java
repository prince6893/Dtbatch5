package com.niit.service;

import java.util.List;

import com.niit.model.Product;

public interface ProductService {
public void addProduct(Product product);
	
	public void deleteProduct(int pid);
	
	public Product getProductById(int pid);


	public void editProduct(Product product);

	public List<Product> getAllProduct();

	
}
