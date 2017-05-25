package edu.mum.coffee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import edu.mum.coffee.domain.Address;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.PersonService;
import edu.mum.coffee.service.ProductService;

@Controller
public class ProductController {


	@Autowired
	private ProductService productService;
	
	@GetMapping(value="/listProducts")
	public String listProduct(Model model)
	{
		model.addAttribute("products", productService.getAllProduct());
		return "listProducts";
	}
	
	@GetMapping(value="/maintainProduct")
	public String maintainProduct(Model model)
	{
		model.addAttribute("products", productService.getAllProduct());
		return "maintainProduct";
	}	

	@GetMapping(value="/deleteproduct/{productId}")
	public String deleteproduct(@PathVariable int productId, Model model)
	{
		productService.delete(productService.getProduct(productId)); 
		model.addAttribute("products", productService.getAllProduct());		
		return "maintainProduct";			
	}
	
	@GetMapping(value="/addproduct")
	public String getproduct()
	{
		return "addProduct";
	}

	//for saving the posted product
	@PostMapping(value="/addproduct")
	public String addproduct(Product product,  Model model)
	{	   
		productService.save(product);
		model.addAttribute("products", productService.getAllProduct());
		return "maintainProduct";		
	}
	
	
	@GetMapping(value="/editproduct/{id}")
	public String showupdateproduct(@PathVariable("id") int id, Model model)
	{
		model.addAttribute("product", productService.getProduct(id));
		return "editProduct";
	}

	//bug inside
	//need a edit function in service class
	@PostMapping(value="/editproduct")
	public String updateproduct( Product product, Model model)
	{
		//Product productold=productService.getProduct(product.getId());
		//productService.delete(productold); 
		productService.save(product);
		model.addAttribute("products", productService.getAllProduct());		
		return "maintainProduct";
		
		
	}
	
	
	
}
