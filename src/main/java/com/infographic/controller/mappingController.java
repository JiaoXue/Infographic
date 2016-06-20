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
	
	
	@RequestMapping(value = "/football_1.do", method = RequestMethod.GET)
	public String football_1(Model model) {	
		return "football_1";
	}
	
}
