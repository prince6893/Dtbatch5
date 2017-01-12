package com.niit.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
public class UsersOrder implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int orderId;

	@OneToOne
	@JoinColumn(name = "cid")
	private Cart cart;

	@OneToOne
	@JoinColumn(name = "userId")
	private Users users;

	@OneToOne
	@JoinColumn(name = "billingAddressId")
	private BillingAddress billsaddress;

	@OneToOne
	@JoinColumn(name = "shippingAddressId")
	private ShippingAddress shipaddress;

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public BillingAddress getBillsaddress() {
		return billsaddress;
	}

	public void setBillsaddress(BillingAddress billsaddress) {
		this.billsaddress = billsaddress;
	}

	public ShippingAddress getShipaddress() {
		return shipaddress;
	}

	public void setShipaddress(ShippingAddress shipaddress) {
		this.shipaddress = shipaddress;
	}
}
