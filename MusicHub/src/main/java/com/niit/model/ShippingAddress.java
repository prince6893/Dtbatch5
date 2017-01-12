package com.niit.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
public class ShippingAddress implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int shippingAddressId;
	private String streetName;
	private String apartmentNumber;
	private String city;
	private String state;
	private String country;
	private String zipCode;
	@OneToOne
	private Users users;
	
	public int getShippingAddressId() {
	return shippingAddressId;
	}
	public void setShippingAddressId(int shippingAddressId) {
	this.shippingAddressId = shippingAddressId;
	}
	public String getStreetName() {
	return streetName;
	}
	public void setStreetName(String streetName) {
	this.streetName = streetName;
	}
	public String getApartmentNumber() {
	return apartmentNumber;
	}
	public void setApartmentNumber(String apartmentNumber) {
	this.apartmentNumber = apartmentNumber;
	}
	public String getCity() {
	return city;
	}
	public void setCity(String city) {
	this.city = city;
	}
	public String getState() {
	return state;
	}
	public void setState(String state) {
	this.state = state;
	}
	public String getCountry() {
	return country;
	}
	public void setCountry(String country) {
	this.country = country;
	}
	public String getZipCode() {
	return zipCode;
	}
	public void setZipCode(String zipCode) {
	this.zipCode = zipCode;
	}
	
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	@Override
	public String toString() {
	return "ShippingAddress{" +
	"streetName='" + streetName + '\'' +
	", apartmentNumber='" + apartmentNumber + '\'' +
	", city='" + city + '\'' +
	", state='" + state + '\'' +
	", country='" + country + '\'' +
	", zipCode='" + zipCode + '\'' +
	'}';
	}
	}
