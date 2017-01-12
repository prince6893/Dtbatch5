package com.niit.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;
@Entity
public class Product implements Serializable{
	

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int pid;
	private String name;
	private String brand;
	private double price;
	
	@Transient
	private MultipartFile image;

	
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	
	
	
	 @OneToMany(mappedBy = "product", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	    @JsonIgnore
	    private List<CartItem> cartItemList;
	
	
	public List<CartItem> getCartItemList() {
		return cartItemList;
	}
	public void setCartItemList(List<CartItem> cartItemList) {
		this.cartItemList = cartItemList;
	}



	@ManyToOne
    @JoinColumn(name = "cid")
    @JsonIgnore
    private Category category;
	
	@ManyToOne
    @JoinColumn(name = "sid")
    @JsonIgnore
    private Supplier supplier;


	
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	} 
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
		 
	
	public String getName() {
		return name;  
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
}
