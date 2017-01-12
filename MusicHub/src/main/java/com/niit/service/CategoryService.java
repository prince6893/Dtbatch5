package com.niit.service;

import java.util.List;

import com.niit.model.Category;

public interface CategoryService {
	public void addCategory(Category category);
	public void deleteCategory(int cid);
	public Category getCategoryById(int cid);
	public void editCategory(Category category);
	public List<Category> getAllCategories();
	public Category getByName(String cname);
	

}
