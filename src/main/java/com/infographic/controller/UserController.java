package com.infographic.controller;

import org.springframework.stereotype.Controller;    
import org.springframework.ui.Model;    
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;  

@Controller 
public class UserController {
	
	@RequestMapping(value="index.do", method = RequestMethod.GET)    
    public void index(Model model){    
        model.addAttribute("str0121", "Hellow world");    
        System.out.println("index.jsp");    
    }
	
	
	
}


  
    
    