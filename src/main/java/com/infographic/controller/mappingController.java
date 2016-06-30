package com.infographic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;  
import org.springframework.ui.Model;    

@Controller 
public class mappingController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model) {	
		return "home";
	}
	
	@RequestMapping(value = "/info_index", method = RequestMethod.GET)
	public String info_index(Model model) {	
		return "info_index";
	}
	
	@RequestMapping(value = "/football_1", method = RequestMethod.GET)
	public String football_1(Model model) {	
		return "football_1";
	}
	
	
}
