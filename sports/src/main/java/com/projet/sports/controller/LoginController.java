package com.projet.sports.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	@GetMapping("/show-login-page")
	public String loginPage() {
		return "login-page";
	}

}
