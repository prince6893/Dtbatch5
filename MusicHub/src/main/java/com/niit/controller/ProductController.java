package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.webflow.context.servlet.HttpServletContextMap;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.service.CategoryService;
import com.niit.service.ProductService;
import com.niit.service.SupplierService;

@Controller
public class ProductController {
	

	@Autowired
	private ProductService productService;

@Autowired
private CategoryService cs;
	
	@Autowired
	private SupplierService sup;
	
	@RequestMapping(value = "/product/add")
	public String addProductPage(Model model) {
		// ModelAndView modelAndView = new ModelAndView("add-product");
		// modelAndView.addObject("product", new Product());//to avoid NLP
/*List<Category> list = cs.getAllCategories();
		
//modelAndView.addObject("Category", list);
		Product prod=new Product();
		Category category=new Category();
		prod.setCategory(category);*/
		model.addAttribute("categoryList", this.cs.getAllCategories());
		model.addAttribute("supplierList",this.sup.getAllSupplier());
		return "add-product";
	}

	@ModelAttribute("product")//command name
	public Product newProduct() {
		return new Product();
	}

	@RequestMapping( value = "/product/add/process", method = RequestMethod.POST)
	public String addProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result,
			HttpServletRequest request) {

		if (result.hasErrors()) {
			return "add-product";
		}

	Category category=cs.getByName(product.getCategory().getCname());
product.setCategory(category);

Supplier supplier=sup.getByName(product.getSupplier().getSupname());
product.setSupplier(supplier);
productService.addProduct(product);
		MultipartFile productImage = product.getImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		Path path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + product.getPid() + ".png");

		if (productImage != null && !productImage.isEmpty()) {
			try {
				productImage.transferTo(new File(path.toString()));
			} catch (Exception ex) {
				ex.printStackTrace();
				throw new RuntimeException("Product image saving failed", ex);
			}
		}
	
	
		return "administrator";

	}

	@RequestMapping(value = "/product/list")
	public ModelAndView listOfProducts() {
		ModelAndView modelAndView = new ModelAndView("list-of-products");
		List<Product> product = productService.getAllProduct();
		modelAndView.addObject("Product", product);
		return modelAndView;
	}
	
	
	

	@RequestMapping("/product/editproduct/{pid}")
    public String editProduct(@PathVariable("pid") int pid,  Model model){
        Product product = productService.getProductById(pid);
 
        model.addAttribute("product", product);
		model.addAttribute("categoryList", this.cs.getAllCategories());
		model.addAttribute("supplierList",this.sup.getAllSupplier());

        return "edit-product";
    }
 
 
    @RequestMapping(value="/product/editproduct", method = RequestMethod.POST)
    public String editProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result, HttpServletRequest request){
 
        if(result.hasErrors()){
            return "edit-product";
        }
 
        Category category=cs.getByName(product.getCategory().getCname());
        product.setCategory(category);
        Supplier supplier=sup.getByName(product.getSupplier().getSupname());
        product.setSupplier(supplier);
        
        MultipartFile productImage = product.getImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        Path path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + product.getPid() + ".png");
 
        if(productImage != null && !productImage.isEmpty()){
            try {
                productImage.transferTo(new File(path.toString()));
            } catch (Exception ex){
                ex.printStackTrace();
                throw new RuntimeException("Product image saving failed", ex);
            }
        }
 
        productService.editProduct(product);
 
        return "redirect:/administrator";
    }
 
 
    @RequestMapping("/product/delete/{pid}")
    public String deleteProduct(@PathVariable int pid, Model model, HttpServletRequest request){
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        Path path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + pid + ".png");
 
        if(Files.exists(path)){
            try {
                Files.delete(path);
            } catch (Exception ex){
                ex.printStackTrace();
            }
        }
 
        Product product = productService.getProductById(pid);
        productService.deleteProduct(pid);
 
        return "redirect:/administrator";
    }
    
  
    
    
    
    @RequestMapping("/productForUser")
    public String productForUser(Model model){
        List<Product> product = productService.getAllProduct();
        model.addAttribute("Product", product);//"Product" same as <c:forEach var="product" items="${Product}"> in jsp

        return "productForUser";
    }
    
    
    
    @RequestMapping("/viewProduct/{pid}")
    public String viewProduct(@PathVariable int pid, Model model) throws IOException{
        Product product = productService.getProductById(pid);
        model.addAttribute("product", product);

        return "viewProduct";
    }
}
