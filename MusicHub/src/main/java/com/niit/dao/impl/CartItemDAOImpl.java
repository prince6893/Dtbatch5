package com.niit.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CartItemDAO;
import com.niit.model.Cart;
import com.niit.model.CartItem;

@Repository
@Transactional
public class CartItemDAOImpl implements CartItemDAO{
	
	 @Autowired
	    private SessionFactory sessionFactory;

	    public void addCartItem(CartItem cartItem){
	        Session session = sessionFactory.getCurrentSession();
	        session.saveOrUpdate(cartItem);
	        session.flush();
	    }

	    public void removeCartItem(CartItem cartItem){
	        Session session = sessionFactory.getCurrentSession();
	        session.delete(cartItem);
	        session.flush();
	    }

	    public void removeAllCartItems(Cart cart){
	    	
	    	System.out.println("cart Id"+cart.getCid());
	        List<CartItem> cartItems = cart.getCartItems();

	        for (CartItem item : cartItems){
	        	System.out.println("cart item"+item);
	            removeCartItem(item);
	        }
	    }

	    public CartItem getCartItemByProductId(int pid){
	        Session session = sessionFactory.getCurrentSession();
	        Query query = session.createQuery("from CartItem where pid = ?");
	        query.setInteger(0, pid);
	        session.flush();

	        return (CartItem) query.uniqueResult();
	    }

	

	
}
