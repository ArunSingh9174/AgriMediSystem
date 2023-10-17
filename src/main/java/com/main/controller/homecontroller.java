package com.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homecontroller {

	@RequestMapping("/index")
	public String index() {
		
		return "index";
	}
	
	@RequestMapping("/login")
	public String login() {
		
		return "login";
	}
	
	@RequestMapping("/register")
	public String register() {
		
		return "register";
	}
	
	@RequestMapping("/about")
	public String about() {
		
		return "about";
	}
	
	@RequestMapping("/services")
	public String services() {
		
		return "services";
	}
	
	@RequestMapping("/contact")
	public String contact() {
		
		return "contact";
	}
	
	@RequestMapping("/adminlogin")
	public String adminlogin() {
		
		return "adminlogin";
	}
	
	@RequestMapping("/adminpanal")
	public String adminpanal() {
		
		return "adminpanal";
	}
	@RequestMapping("/delete")
	public String delete() {
		
		return "delete";
	}
	@RequestMapping("/update")
	public String update() {
		
		return "update";
	}
	@RequestMapping("/agritip")
	public String agrits() {
		
		return "agritip";
	}
}
