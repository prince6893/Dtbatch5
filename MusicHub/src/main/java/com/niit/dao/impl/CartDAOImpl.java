package com.niit.dao.impl;

import java.io.IOException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CartDAO;
import com.niit.model.Cart;
import com.niit.service.UsersOrderService;
@Repository
@Transactional
public class CartDAOImpl implements CartDAO {
@Autowired
private SessionFactory sessionFactory;
	
@Autowired
private UsersOrderService usersOrderService;

public Cart getCartById(int cid){
    Session session = sessionFactory.getCurrentSession();
    return (Cart) session.get(Cart.class, cid);
}

public void update(Cart cart){
    int cid = cart.getCid();
    double grandTotal = usersOrderService.getUsersOrderGrandTotal(cid);
    cart.setGrandTotal(grandTotal);

    Session session = sessionFactory.getCurrentSession();
    session.saveOrUpdate(cart);
}

public Cart validate(int cid) throws IOException{
    Cart cart = getCartById(cid);
    if(cart == null || cart.getCartItems().size() == 0){
        throw new IOException(cid + "");
    }

    update(cart);
    return cart;
}

}
