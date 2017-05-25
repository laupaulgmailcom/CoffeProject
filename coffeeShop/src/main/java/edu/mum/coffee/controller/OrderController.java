package edu.mum.coffee.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import edu.mum.coffee.domain.Address;
import edu.mum.coffee.domain.Order;
import edu.mum.coffee.domain.Orderline;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.domain.Product;
import edu.mum.coffee.service.OrderService;
import edu.mum.coffee.service.PersonService;
import edu.mum.coffee.service.ProductService;

@Controller

public class OrderController {
	
	@Autowired
	private OrderService orderService;
		

	@GetMapping(value="/listorder")
	public String listorder( Model model)
	{
		model.addAttribute("orders", orderService.findAll());				
		return "listorders";				
	}
	
	@GetMapping(value="/orderdetail/{orderId}")
	public String orderDetail( @PathVariable int orderId, Model model)
	{
		model.addAttribute("order", orderService.findById(orderId));				
		return "OrderDetail";				
	}
		
	
	}


