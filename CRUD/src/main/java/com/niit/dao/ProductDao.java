package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDao {
	public void addProduct(Product p);

	public void updateProduct(Product p);

	public Product getProduct(String id);

	public void deleteProduct(String id);

	public List<Product> getProducts();
}
