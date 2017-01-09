package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.TeamService.ProductService;
import com.niit.model.Product;
import com.niit.model.Team;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/p/add")
	public ModelAndView addProductPage() {
		ModelAndView modelAndView = new ModelAndView("add-product");
		modelAndView.addObject("p", new Product());
		return modelAndView;
	}

	@RequestMapping(value = "/p/add/process")
	public ModelAndView addingProduct(@ModelAttribute("p") Product p, HttpServletRequest request,
			BindingResult result) {
		ModelAndView modelAndView = new ModelAndView("home");
		productService.addProduct(p);
		String message = "Product was successfully added.";
		modelAndView.addObject("message", message);

		String filename = null;

		int res = 0;
		ServletContext context = request.getServletContext();
		String path = context.getRealPath("./WEB-INF/resources/" + p.getId() + ".jpg");
		System.out.println("Path = " + path);
		System.out.println("File name = " + p.getImage().getOriginalFilename());
		File f = new File(path);
		if (!p.getImage().isEmpty()) {
			try {

				filename = p.getImage().getOriginalFilename();
				byte[] bytes = p.getImage().getBytes();
				BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(f));
				bs.write(bytes);
				bs.close();
				System.out.println("Image uploaded");

			} catch (Exception ex) {
				System.out.println(ex.getMessage());
			}

		}

		return modelAndView;
	}

	@RequestMapping(value = "/p/list")
	public ModelAndView listOfProducts() {
		ModelAndView modelAndView = new ModelAndView("list-of-products");
		List<Product> p = productService.getProducts();
		modelAndView.addObject("Product", p);
		return modelAndView;
	}

	@RequestMapping(value = "/p/edit/{id}", method = RequestMethod.GET)
	public ModelAndView editProductPage(@PathVariable String id) {
		ModelAndView modelAndView = new ModelAndView("edit-product");
		Product p = productService.getProduct(id);
		modelAndView.addObject("p", p); // is not a table name
		return modelAndView;

	}

	@RequestMapping(value = "/p/edit/{id}", method = RequestMethod.POST)
	public ModelAndView edditingProduct(@ModelAttribute Product p, @PathVariable String id) {

		ModelAndView modelAndView = new ModelAndView("home");

		productService.updateProduct(p);

		String message = "Product was successfully edited.";
		modelAndView.addObject("message", message);

		return modelAndView;
	}

	@RequestMapping(value = "/p/delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteProduct(@PathVariable String id) {
		ModelAndView modelAndView = new ModelAndView("home");
		productService.deleteProduct(id);

		String message = "Product was successfully deleted.";
		modelAndView.addObject("message", message);
		return modelAndView;
	}

}
