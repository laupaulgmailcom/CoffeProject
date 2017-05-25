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

import edu.mum.coffee.domain.Person;
import edu.mum.coffee.service.PersonService;

@RestController
@RequestMapping("/rest/person")
public class RestPersonController {

	@Autowired
	private PersonService personService;
	
	/*
	 * Need to add error handle
	 * 
	 */
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public Person createProduct(@Valid @RequestBody Person person) {
		return personService.savePerson(person);
	}
	
	
	/*List
	Defect: Need to consider the page function 
	when person are too big which will cause overflow 
	*/
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public List<Person> listPersons(){
		List<Person> persons = personService.getAllPerson();
		return persons;
	}
	
	/*Delete
	 * 
	 *
	 */	
	@RequestMapping(value="/delete/{personId}", method=RequestMethod.GET)
	public String deleteProducts(@PathVariable long personId){
		personService.removePerson(personService.findById(personId));
		return "redirect:list";
	}
	
	/*Update
	 * 
	 */
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String updatePerson(@ModelAttribute("person") @Valid Person person,BindingResult result, Model model) {
		if (!result.hasErrors()) {
			personService.savePerson(person);
		} else {
			model.addAttribute("person", person);
			return "update"; 
		}
		return "redirect:list";
	}
}
