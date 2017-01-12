package com.niit.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.UsersOrderDAO;
import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.UsersOrder;
import com.niit.service.CartService;
import com.niit.service.UsersOrderService;

@Service
@Transactional
public class UsersOrderServiceImpl implements UsersOrderService {
	 @Autowired
	    private UsersOrderDAO usersOrderDao;

	    @Autowired
	    private CartService cartService;

	    public void addUsersOrder(UsersOrder usersOrder){
	    	usersOrderDao.addUsersOrder(usersOrder);
	    }

	    public double getUsersOrderGrandTotal(int cid){
	        double grandTotal = 0;
	        Cart cart = cartService.getCartById(cid);
	        List<CartItem> cartItems = cart.getCartItems();

	        for (CartItem item : cartItems){
	            grandTotal += item.getTotalPrice();
	        }

	        return grandTotal;
	    }

}
