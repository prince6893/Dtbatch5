package com.niit.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CartDAO;
import com.niit.model.Cart;
import com.niit.service.CartService;

@Service
@Transactional
public class CartServiceImpl implements  CartService{

	
	 @Autowired
	    private CartDAO cartDao;

	    public Cart getCartById(int cid){
	        return cartDao.getCartById(cid);
	    }

	    public void update(Cart cart){
	        cartDao.update(cart);
	    }
}
