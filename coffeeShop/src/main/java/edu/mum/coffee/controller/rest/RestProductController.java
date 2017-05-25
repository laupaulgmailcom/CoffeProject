package edu.mum.coffee.controller.rest;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.ProductService;

@RestController
@RequestMapping("/rest/product")
public class RestProductController {

	@Autowired
	private ProductService productService;
	
	/*
	 * Need to add error handle
	 * 
	 */
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public Product createProduct(@Valid @RequestBody Product product) {
		return productService.save(product);
	}
	
	
	/*List
	Defect: Need to consider the page function 
	when products are too big which will cause overflow 
	*/
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public List<Product> listProducts(){
		List<Product> products = productService.getAllProduct();
		return products;
	}
	
	/*Delete
	 * 
	 *
	 */	
	@RequestMapping(value="/delete/{productId}", method=RequestMethod.GET)
	public String deleteProducts(@PathVariable int productId){
		productService.delete(productService.getProduct(productId));
		return "redirect:list";
	}
	
	/*Update
	 * 
	 */
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String updateProduct(@ModelAttribute("product") @Valid Product product,BindingResult result, Model model) {
		if (!result.hasErrors()) {
			productService.save(product);
		} else {
			model.addAttribute("product", product);
			return "update"; 
		}
		return "redirect:list";
	}
}
