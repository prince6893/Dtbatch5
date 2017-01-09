package com.niit.TeamServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.TeamService.ProductService;
import com.niit.dao.ProductDao;
import com.niit.model.Product;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {
@Autowired
private ProductDao productDao;
	
	
	@Override
	public void addProduct(Product p) {
		productDao.addProduct(p);		
	}

	@Override
	public void updateProduct(Product p) {
		productDao.updateProduct(p);		
	}

	@Override
	public Product getProduct(String id) {
	return	productDao.getProduct(id);
	}

	@Override
	public void deleteProduct(String id) {
		productDao.deleteProduct(id);		
	}

	@Override
	public List<Product> getProducts() {
	return	productDao.getProducts();
	}

}
