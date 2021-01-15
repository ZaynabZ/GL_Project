package com.projet.sports.controller;

import javax.validation.Valid;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.projet.sports.entity.User;
import com.projet.sports.service.UserService;
import com.projet.sports.user.CrmUser;

@Controller
@RequestMapping("/register")
public class RegistrationController {
	
	@Autowired
	private UserService userService;
	
	private Logger logger = Logger.getLogger(getClass().getName());
	
	// Trim empty strings to null
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
	
	@GetMapping("/show-registration-form")
	public String registerPage(Model theModel) {
		theModel.addAttribute("crmUser", new CrmUser());
		return "register-page";
	}
	
	@PostMapping("/process-registration-form")
	public String processRegistrationForm(
											@Valid @ModelAttribute("crmUser") CrmUser theCrmUser,
											BindingResult theBindingresult,
											Model theModel) {
		
		String userName = theCrmUser.getUserName();
		logger.info("Processing registration form for: " + userName);
		
		if(theBindingresult.hasErrors()) {
			return "registration-page";
		}
		
		User existing = userService.findByUserName(userName);
		if (existing != null) {
			theModel.addAttribute("crmUser", new CrmUser());
			theModel.addAttribute("registrationError", "User name already exists.");
			logger.warn("User name already exists. ");
			return "registration-page";
		}
		
		userService.save(theCrmUser);
		logger.info("Successfully created user " + userName);
		
		return "registration-confirmation";
	}

}
