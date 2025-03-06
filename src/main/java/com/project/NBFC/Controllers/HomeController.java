package com.project.NBFC.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.NBFC.Model.contact;
import com.project.NBFC.Services.ContactService;

@Controller
public class HomeController {
	
	@Autowired
	ContactService cs;
	
	@RequestMapping("/")
	public String home() {
		
		return "Home";
	}
	
	@RequestMapping("/cal")
	public String cal() {
		
		return "cal";
	}

	@RequestMapping("/contact")
	public String cotact() {
		
		return "Contact";
		
	}
	
	@PostMapping("/ContactServlet")
	public String Contacinfo(@ModelAttribute("contact") contact c1) {
	
		cs.savecontact(c1);
		
		
		return "redirect:/Contact";
	}
}
