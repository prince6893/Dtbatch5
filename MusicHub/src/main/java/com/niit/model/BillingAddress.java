package com.niit.model;

import java.io.Serializable;

import javax.persistence.*;


import org.springframework.transaction.annotation.EnableTransactionManagement;

@Entity
public class BillingAddress implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int billingAddressId;
	private String streetName;
	private String apartmentNumber;
	private String city;
	private String state;
	private String country;
	private String zipCode;
	@OneToOne
	private Users user;
	
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public int getBillingAddressId() {
	return billingAddressId;
	}
	public void setBillingAddressId(int billingAddressId) {
	this.billingAddressId = billingAddressId;
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
	
	@Override
	public String toString() {
	return "BillingAddress{" +
	"streetName='" + streetName + '\'' +
	", apartmentNumber='" + apartmentNumber + '\'' +
	", city='" + city + '\'' +
	", state='" + state + '\'' +
	", country='" + country + '\'' +
	", zipCode='" + zipCode + '\'' +
	'}';
	}
	}
