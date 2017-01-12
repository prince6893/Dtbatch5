package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Cart;
import com.niit.model.Customer;
import com.niit.model.Users;
import com.niit.model.UsersOrder;
import com.niit.service.CartService;
import com.niit.service.UsersOrderService;

@Controller
public class OrderController {

	
	 @Autowired
	    private CartService cartService;

	    @Autowired
	    private UsersOrderService usersOrderService;

	    @RequestMapping("/order/{cid}")
	    public String createOrder(@PathVariable("cid") int cid){
	        UsersOrder usersOrder = new UsersOrder();
	        Cart cart = cartService.getCartById(cid);
	       usersOrder.setCart(cart);

	       Users users=cart.getUsers();
	       
	        usersOrder.setUsers(users);
	        usersOrder.setBillsaddress(users.getBillingAddress());
	        users.setShippingAddress(users.getShippingAddress());

	        usersOrderService.addUsersOrder(usersOrder);

	        return "redirect:/checkout?cid=" + cid;

	    }
	
	
}
