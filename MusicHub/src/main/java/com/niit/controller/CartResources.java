package com.niit.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.Customer;
import com.niit.model.Product;
import com.niit.model.Users;
import com.niit.service.CartItemService;
import com.niit.service.CartService;
import com.niit.service.ProductService;
import com.niit.service.UsersService;

@Controller
@RequestMapping("/rest/cart")
public class CartResources {


	  @Autowired
	    private CartService cartService;

	    @Autowired
	    private CartItemService cartItemService;

	    @Autowired
	    private UsersService usersService;

	    @Autowired
	    private ProductService productService;

	    @RequestMapping("/{cid}")
	    public @ResponseBody Cart getCartById(@PathVariable(value = "cid") int cid){
	        return cartService.getCartById(cid);
	    }

	    @RequestMapping(value = "/add/{pid}", method = RequestMethod.PUT)
	    @ResponseStatus(value = HttpStatus.NO_CONTENT)
	    public void addItem (@PathVariable(value = "pid") int pid, Principal p){
	    	System.out.println("Product Id = "+pid);
	    	System.out.println("Username = "+p.getName());
	        Users users = usersService.getUserByName(p.getName());
	        System.out.println(users.getUsersId());
	        Cart cart = users.getCart();
	        Product product = productService.getProductById(pid);
	        List<CartItem> cartItems = cart.getCartItems();

	        for (int i=0; i < cartItems.size(); i++){
	            if(product.getPid() == cartItems.get(i).getProduct().getPid()){
	                CartItem cartItem = cartItems.get(i);
	                cartItem.setQuantity(cartItem.getQuantity() + 1);
	                cartItem.setTotalPrice(product.getPrice()*cartItem.getQuantity());
	                cartItemService.addCartItem(cartItem);

	                return;
	            }
	        }

	        CartItem cartItem = new CartItem();
	        cartItem.setProduct(product);
	        cartItem.setQuantity(1);
	        cartItem.setTotalPrice(product.getPrice()*cartItem.getQuantity());
	        cartItem.setCart(cart);
	        cartItemService.addCartItem(cartItem);
	    }

	    @RequestMapping(value = "/remove/{pid}", method = RequestMethod.PUT)
	    @ResponseStatus(value = HttpStatus.NO_CONTENT)
	    public void removeItem(@PathVariable(value = "pid") int pid){
	        CartItem cartItem = cartItemService.getCartItemByProductId(pid);
	        cartItemService.removeCartItem(cartItem);

	    }

	    @RequestMapping(value = "/{cid}", method = RequestMethod.DELETE)
	    @ResponseStatus(value = HttpStatus.NO_CONTENT)
	    public void clearCart(@PathVariable(value = "cid") int cid){
	        Cart cart = cartService.getCartById(cid);
	        cartItemService.removeAllCartItems(cart);
	    }

	    @ExceptionHandler(IllegalArgumentException.class)
	    @ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request, please verify your payload")
	    public void handleClientErrors (Exception ex){

	    }

	 /*   @ExceptionHandler(Exception.class)
	    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Internal Server Error")
	    public void handleServerErrors (Exception ex){

	    }*/

}
