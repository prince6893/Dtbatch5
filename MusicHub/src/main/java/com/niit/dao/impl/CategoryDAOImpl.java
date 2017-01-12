package com.niit.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;
@Repository
@Transactional
public class CategoryDAOImpl implements CategoryDAO{
@Autowired
private SessionFactory sessionFactory;

	public void addCategory(Category category) {
		sessionFactory.openSession().save(category);		
	}

	public void deleteCategory(int cid) {
		Category categoryToDelete=new Category();
		categoryToDelete.setCid(cid);
		sessionFactory.getCurrentSession().delete(categoryToDelete);
		
	}

	

	public void editCategory(Category category) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(category);
		
	}

	public List<Category> getAllCategories() {
	List<Category> listCategory=(List<Category>)	sessionFactory.openSession().createQuery("from Category").list();
	return listCategory;
		}

	public Category getCategoryById(int cid) {

		String hql="from Category where cid=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setLong(0, cid);
		List<Category> listCategory=(List<Category>) query.list();
		if(listCategory!=null && !listCategory.isEmpty()){
			return listCategory.get(0);
		}else{
			return null;
		} 		
	}

	public Category getByName(String cname) {
		String hql="from Category where cname=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, cname);
		List<Category> listCategory=(List<Category>) query.list();
		if(listCategory!=null && !listCategory.isEmpty()){
			return listCategory.get(0);
		}else{
			
			return null;
		} 
	}

}
