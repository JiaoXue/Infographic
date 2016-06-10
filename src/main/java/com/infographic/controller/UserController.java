package com.infographic.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.stereotype.Controller;    
import org.springframework.ui.Model;    
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.infographic.model.UserModel;
import com.infographic.service.UserServiceImpl;
import com.infographic.service.interfaces.IUserService;

@Controller 
public class UserController {
	
//	@Autowired
//	private UserServiceImpl userServiceImpl;
//	@Autowired
//	private IUserService iUserService;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/login")
	public void login(HttpServletRequest request, HttpServletResponse response) {
		String loginname = request.getParameter("username");
		String encryptedPassword = request.getParameter("password");

		System.out.println(loginname + ":" + encryptedPassword);
		
		return;

	}
}
	
//	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
//	public ModelAndView  login(@RequestParam(value = "error", required = false) String error,
//			@RequestParam(value = "logout", required = false) String logout) {
//
//		ModelAndView model = new ModelAndView();
//		  if (error != null) {
//			model.addObject("error", "Invalid username and password!");
//		  }
//
//		  if (logout != null) {
//			model.addObject("msg", "You've been logged out successfully.");
//		  }
//		  
//		  model.setViewName("login");
//
//		  return model;
//	}

	
//	@RequestMapping(value="index.do", method = RequestMethod.GET)    
//    public void index(Model model){    
//        model.addAttribute("str0121", "Hellow world");    
//        System.out.println("index.jsp");    
//    }
//	
//	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
//	public String home(Model model) {	
//		return "home";
//	}
//	
//	@RequestMapping(value = "/football_1.do", method = RequestMethod.GET)
//	public String football_1(Model model) {	
//		return "football_1";
//	}	
	


  
    
    