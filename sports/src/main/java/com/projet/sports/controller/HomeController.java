package com.projet.sports.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	
	@GetMapping("/")
	public String homePage() {
		return "home-page";
	}
	
	@GetMapping("/coaches")
	public String coachesListPage() {
		return "list-coaches";
	}

}
