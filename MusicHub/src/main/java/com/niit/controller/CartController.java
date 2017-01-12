package com.niit.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Cart;
import com.niit.model.Customer;
import com.niit.model.Users;
import com.niit.service.UsersService;

@Controller
@RequestMapping("/customer/cart")
public class CartController {
	
	

	@Autowired
	UsersService uservice;
	


    @RequestMapping
    public String getCart(Principal p){
        Users users = uservice.getUserByName(p.getName());
        int cid = users.getCart().getCid();
        
        return "redirect:/customer/cart/" + cid;
    }

    @RequestMapping("/{cid}")
    public String getCartRedirect(@PathVariable (value = "cid") int cid, Model model){
        model.addAttribute("cid", cid);
        System.out.println("CartIdController"+ cid);
        return "cart";
    }

    
 

}
