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

import com.niit.model.Supplier;
import com.niit.service.SupplierService;

@Controller
public class SupplierController {

	@Autowired
	private SupplierService ss;
	
	@RequestMapping("/supplier/add")
	public String addSuppliers(){
		return "add-supplier";
	}
	
	@ModelAttribute("supplier")
	public Supplier newSupplier(){
		return new Supplier();
		
	}
	
	@RequestMapping(value="/supplier/add/process", method = RequestMethod.POST)
	public String addingSuppliers(@Valid @ModelAttribute("supplier") Supplier supplier, BindingResult result){
	ss.addSupplier(supplier);
	return "administrator";
	}
	
	
	@RequestMapping(value = "/supplier/list")
	public ModelAndView listOfSupplier() {
		ModelAndView modelAndView = new ModelAndView("list-of-suppliers");
		@SuppressWarnings("unchecked")
		List<Supplier> supplier =ss.getAllSupplier();
		modelAndView.addObject("Supplier", supplier);
		return modelAndView;
	}

	
	
	@RequestMapping("/supplier/editsupplier/{sid}")
	public String editsupplier(@PathVariable("sid") int sid,  Model model){
		Supplier supplier = ss.getSupplierById(sid);

	    model.addAttribute("supplier", supplier);

	    return "edit-supplier";
	}

	@RequestMapping(value="/supplier/editsupplier", method = RequestMethod.POST)
	public String editsupplierPost(@Valid @ModelAttribute("supplier") Supplier supplier, BindingResult result){

	   
		ss.editSupplier(supplier);

	    return "redirect:/administrator";
	}
	
	
	
	
	@RequestMapping("/supplier/delete/{sid}")
	public String deletesupplier(@PathVariable int sid, Model model){
	  

		Supplier supplier=ss.getSupplierById(sid);
		ss.deleteSupplier(sid);

	    return "redirect:/administrator";
	}
	
	
	
	
}
