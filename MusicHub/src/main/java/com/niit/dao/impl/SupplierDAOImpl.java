package com.niit.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.SupplierDAO;
import com.niit.model.Category;
import com.niit.model.Supplier;
@Repository
@Transactional
public class SupplierDAOImpl implements SupplierDAO{
@Autowired
private SessionFactory sessionFactory;

	public void addSupplier(Supplier supplier) {
		sessionFactory.openSession().save(supplier);		
	}

	public void deleteSupplier(int sid) {
		Supplier supplier=getSupplierById(sid);
		
		if(supplier !=null)
sessionFactory.getCurrentSession().delete(supplier);
		
	}

	public Supplier getSupplierById(int sid) {

		String hql="from Supplier where sid=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setLong(0, sid);
		List<Supplier> listSupplier=(List<Supplier>) query.list();
		if(listSupplier!=null && !listSupplier.isEmpty()){
			return listSupplier.get(0);
		}else{
			return null;
		} 		
		}

	public void editSupplier(Supplier supplier) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}
	
	public List getAllSupplier() {
		return sessionFactory.openSession().createQuery("from Supplier").list();
	}

	
	public Supplier getByName(String supname) {
		String hql="from Supplier where supname=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, supname);
		List<Supplier> listSupplier=(List<Supplier>) query.list();
		if(listSupplier!=null && !listSupplier.isEmpty()){
			return listSupplier.get(0);
		}else{
			
		
			return null;
		} 	
}


}
