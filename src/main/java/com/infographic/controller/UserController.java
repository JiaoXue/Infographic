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

import org.codehaus.jackson.map.ObjectMapper;

import com.infographic.common.util.HtmlUtil;
import com.infographic.common.util.StringUtil;
import com.infographic.model.UserModel;
import com.infographic.service.UserServiceImpl;
import com.infographic.service.interfaces.IUserService;
import com.infographic.dao.interfaces.IUserDAO;
import com.infographic.controller.baseController;

@Controller 
public class UserController extends baseController{
	
	@Autowired
	private IUserDAO iUserDAO;
	@Autowired
	private UserServiceImpl userServiceImpl;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model) {	
		return "home";
	}
	
	@RequestMapping(value = "/football_1.do", method = RequestMethod.GET)
	public String football_1(Model model) {	
		return "football_1";
	}
	
	@RequestMapping(value = "/login")
	public void login(HttpServletRequest request, HttpServletResponse response) {
		String loginname = request.getParameter("username");
		String encryptedPassword = request.getParameter("password");

		System.out.println(loginname + ":" + encryptedPassword);
		
		if (StringUtil.isEmpty(loginname)) {
			System.out.println("登录名为空，登录失败");
//			sendFailureMessage(response, "登录名不能为空，登录失败");
			return;
		}
		if (StringUtil.isEmpty(encryptedPassword)) {
			System.out.println("password为空，登录失败");
//			sendFailureMessage(response, "密码不能为空，登录失败");
			return;
		}
		
		try{
			List<Map<String, Object>> user = userServiceImpl.signin(loginname,encryptedPassword);
			if (user != null) {
				String userid = user.get(0).get("id").toString();
				System.out.println("登录成功!");
				sendSuccessMessage(response, userid);

			} else {
				System.out.println(user);
				System.out.println("登录失败!");
				sendFailureMessage(response, "登录失败！");
			}
		}catch (Exception e) {
			System.out.println("111登录失败!");
		}
		
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

	


  
    
    