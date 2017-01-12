package com.niit.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Category;
import com.niit.service.CategoryService;


@Controller
public class CategoryController {
	

@Autowired
private CategoryService categoryService;

@RequestMapping("/category/add")
	public String addCategory(){
	return "add-category";
}


@ModelAttribute("category")     //to avoid NLP
public Category newCategory()
{
	return new Category();
}


@RequestMapping(value = "/category/add/process", method = RequestMethod.POST)
public String addcategoryPost(@Valid @ModelAttribute("category") Category category, BindingResult result) {

	

categoryService.addCategory(category);

	return "administrator";

}


@RequestMapping(value = "/category/list")
public ModelAndView listOfcategory() {
	ModelAndView modelAndView = new ModelAndView("list-of categories");
	List<Category> category =categoryService.getAllCategories();
	modelAndView.addObject("Category", category);
	return modelAndView;
}

@RequestMapping("/category/editcategory/{cid}")
public String editcategory(@PathVariable("cid") int cid,  Model model){
	Category category = categoryService.getCategoryById(cid);

    model.addAttribute("category", category);

    return "edit-category";
}

@RequestMapping(value="/category/editcategory", method = RequestMethod.POST)
public String editcategoryPost(@Valid @ModelAttribute("category") Category category, BindingResult result){

   
	categoryService.editCategory(category);

    return "redirect:/administrator";
}


@RequestMapping("/category/delete/{cid}")
public String deletecategory(@PathVariable int cid, Model model){
  

	Category category=categoryService.getCategoryById(cid);
	categoryService.deleteCategory(cid);

    return "redirect:/administrator";
}

}
