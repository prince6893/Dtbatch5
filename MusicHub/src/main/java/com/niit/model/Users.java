package com.niit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;
@Entity
public class Users implements Serializable{
	@Id
	@GeneratedValue
	private int usersId;
	private String username;
	private String password;
	private Boolean enabled;
	private int customerId;
	private String useremail;
	private String usernumber;
	private String userloginname;
	@OneToOne
    @JoinColumn(name = "billsId")
    private BillingAddress billingAddress;

    @OneToOne
    @JoinColumn(name = "shipId")
    private ShippingAddress shippingAddress;
    
    @OneToOne
    @JoinColumn(name = "cartId")
    @JsonIgnore
    private Cart cart;
    
    
    
    
    
    
	public String getUserloginname() {
		return userloginname;
	}
	public void setUserloginname(String userloginname) {
		this.userloginname = userloginname;
	}
	public String getUsernumber() {
		return usernumber;
	}
	public void setUsernumber(String usernumber) {
		this.usernumber = usernumber;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public BillingAddress getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}
	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public int getUsersId() {
	return usersId;
	}
	public void setUsersId(int usersId) {
	this.usersId = usersId;
	}
	public String getUsername() {
	return username;
	}
	public void setUsername(String username) {
	this.username = username;
	}
	public String getPassword() {
	return password;
	}
	public void setPassword(String password) {
	this.password = password;
	}
	public Boolean getEnabled() {
	return enabled;
	}
	public void setEnabled(Boolean enabled) {
	this.enabled = enabled;
	}
	public int getCustomerId() {
	return customerId;
	}
	public void setCustomerId(int customerId) {
	this.customerId = customerId;
	}
	
	@Override
	public String toString() {
	return "Users{" +
	"username='" + username + '\'' +
	", password='" + password + '\'' +
	
	'}';
	}
	}

