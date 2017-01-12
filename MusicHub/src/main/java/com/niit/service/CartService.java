package com.niit.service;

import java.util.List;

import com.niit.model.Cart;

public interface CartService {
	Cart getCartById(int cid);

    void update(Cart cart);
}
