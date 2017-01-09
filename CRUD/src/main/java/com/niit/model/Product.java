package com.niit.model;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;
@Entity
public class Product {
	@Id
	@GeneratedValue
	private String id;
	private String name;
	private String Description;
	private int price;
	@Transient
	private MultipartFile image;

	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

}
