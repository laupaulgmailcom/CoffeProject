package edu.mum.coffee.controller.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

import edu.mum.coffee.domain.Order;
import edu.mum.coffee.domain.Orderline;
import edu.mum.coffee.service.OrderService;

@RestController
@RequestMapping("/rest/order")
public class RestOrderController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public List<Order> getAllOrder(Model model) {
		List<Order> orders = orderService.findAll();
		return orders;
	}
	
	@RequestMapping(value="/detail/{orderId}", method=RequestMethod.GET)
	public List<Orderline> getOrderDetail(@PathVariable("orderId") String orderId) {
		Order order = orderService.findById(Integer.parseInt(orderId));
		return order.getOrderLines();
	}
	
	@RequestMapping(value="/delete/{orderId}", method=RequestMethod.GET)
	public String deleteOrder(@PathVariable("productId") int orderId) {
		orderService.delete(orderService.findById(orderId));
		return "redirect:list";
	}
}
