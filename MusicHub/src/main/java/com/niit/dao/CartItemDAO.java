package com.niit.dao;

import java.util.List;

import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.UsersOrder;



public interface CartItemDAO {
	 void addCartItem(CartItem cartItem);

	    void removeCartItem(CartItem cartItem);

	    void removeAllCartItems(Cart cart);
	    
	

	    CartItem getCartItemByProductId(int pid);
}
