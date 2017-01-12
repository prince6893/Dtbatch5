package com.niit.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.ProductDAO;
import com.niit.model.Product;

@Repository

public class ProductDAOImpl implements ProductDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addProduct(Product product) {
		sessionFactory.openSession().saveOrUpdate(product);	
	}

	public void deleteProduct(int pid) {
		   Product ProductToDelete = new Product();
           ProductToDelete.setPid(pid);
           sessionFactory.getCurrentSession().delete(ProductToDelete);
	}


	public Product getProductById(int pid) {
		  String hql = "from Product where pid=?";
          Query query = sessionFactory.getCurrentSession().createQuery(hql);
          query.setLong(0,pid);
          @SuppressWarnings("unchecked")
          List<Product> listProduct = (List<Product>) query.list();
          if (listProduct != null && !listProduct.isEmpty()) {
                    return listProduct.get(0);
          }
          else
          {
                    return null;                      
          }
	}


	public void editProduct(Product product) {
	sessionFactory.getCurrentSession().saveOrUpdate(product);
	}

	@SuppressWarnings("unchecked")
	
	
	public List<Product> getAllProduct() {
		   List<Product> listProduct  = (List<Product>) sessionFactory.getCurrentSession().createQuery("from Product").list();
           return listProduct;
           }

}
