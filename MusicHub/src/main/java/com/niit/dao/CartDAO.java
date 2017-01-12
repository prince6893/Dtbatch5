package com.niit.dao;

import java.io.IOException;
import java.util.List;

import com.niit.model.Cart;


public interface CartDAO {
	
	 Cart getCartById(int cid);
	 Cart validate(int cid) throws IOException;
	 void update(Cart cart);
	
}
