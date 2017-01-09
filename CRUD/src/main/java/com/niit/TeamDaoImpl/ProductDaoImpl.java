package com.niit.TeamDaoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.ProductDao;
import com.niit.model.Product;
@Repository
class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void addProduct(Product p) {
		sessionFactory.getCurrentSession().save(p);		
	}

	@Override
	public void updateProduct(Product p) {
		Product productToUpdate=getProduct(p.getId());
		productToUpdate.setName(p.getName());
		productToUpdate.setDescription(p.getDescription());
		productToUpdate.setPrice(p.getPrice());
sessionFactory.getCurrentSession().update(productToUpdate);		
	}

	@Override
	public Product getProduct(String id) {
		return (Product) sessionFactory.getCurrentSession().get(Product.class, id);
	}

	@Override
	public void deleteProduct(String id) {
		Product p=getProduct(id);
		if(p !=null)
sessionFactory.getCurrentSession().delete(p);		
	}

	@Override
	public List<Product> getProducts() {
		return sessionFactory.getCurrentSession().createQuery("from Product").list();
	}

}
