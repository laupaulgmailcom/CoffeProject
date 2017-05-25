package edu.mum.coffee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import edu.mum.coffee.domain.Address;
import edu.mum.coffee.domain.Person;
import edu.mum.coffee.service.PersonService;

@Controller
public class PersonController {

	
	@Autowired
	private PersonService persontService;
	
	@GetMapping(value="/listPersons")
	public String listProduct(Model model)
	{
		model.addAttribute("persons", persontService.getAllPerson());
		return "listPersons";
	}
	
	@GetMapping(value="/addperson")
	public String getperson()
	{
		return "addperson";
	}

	@PostMapping(value="/addperson")
	public String addcustomer( Person person, Address address, Model model)
	{
		person.setAddress(address);	    
		persontService.savePerson(person);
		model.addAttribute("persons", persontService.getAllPerson());
		return "listPersons";		
	}
	
	@GetMapping(value="/updateperson/{id}")
	public String updateperson(@PathVariable("id") long id, Model model)
	{
		model.addAttribute("person", persontService.findById(id));
		return "editPerson";
	}


	@PostMapping(value="/updateperson")
	public String updatecustomer( Person person, Address address, Model model)
	{

		person.setAddress(address);	    
		persontService.savePerson(person);
		return "addperson";			
	}
		
	@GetMapping(value="/personInfo/{id}")
	public String personInfo(@PathVariable("id") long id, Model model)
	{
		model.addAttribute("person", persontService.findById(id));
		return "personInfo";
	}
}
