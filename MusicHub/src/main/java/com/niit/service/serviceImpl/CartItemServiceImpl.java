package com.niit.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CartItemDAO;
import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.UsersOrder;
import com.niit.service.CartItemService;

@Service
@Transactional
public class CartItemServiceImpl implements CartItemService{

    @Autowired
    private CartItemDAO cartItemDao;

    public void addCartItem(CartItem cartItem){
        cartItemDao.addCartItem(cartItem);
    }

    public void removeCartItem(CartItem cartItem){
        cartItemDao.removeCartItem(cartItem);
    }

    public void removeAllCartItems(Cart cart){
        cartItemDao.removeAllCartItems(cart);
    }

    public CartItem getCartItemByProductId(int pid){
        return cartItemDao.getCartItemByProductId(pid);
    }
}
