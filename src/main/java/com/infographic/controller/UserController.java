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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.annotation.PathVariable;

import com.infographic.common.util.SessionUtils;
import com.infographic.common.util.HtmlUtil;
import com.infographic.common.util.StringUtil;
import com.infographic.model.UserModel;
import com.infographic.service.UserServiceImpl;
import com.infographic.service.interfaces.IUserService;
import com.infographic.dao.interfaces.IUserDAO;
import com.infographic.controller.baseController;


@Controller 
//@SessionAttributes(value="currentUser")
public class UserController extends baseController{
	
	@Autowired
	private IUserDAO iUserDAO;
	@Autowired
	private UserServiceImpl userServiceImpl;
	
	
	@RequestMapping(value = "/login")
	public void login(HttpServletRequest request, HttpServletResponse response) {
		
		String loginname = request.getParameter("username");
		String encryptedPassword = request.getParameter("password");

		System.out.println(loginname + ":" + encryptedPassword);
		
		if (StringUtil.isEmpty(loginname)) {
			System.out.println("Username is empty");
			sendFailureMessage(response, "Username is empty");
			return;
		}
		if (StringUtil.isEmpty(encryptedPassword)) {
			System.out.println("password is empty");
			sendFailureMessage(response, "Password is empty");
			return;
		}
		
		try{
			List<Map<String, Object>> user = userServiceImpl.signin(loginname,encryptedPassword);
			if (user != null) {
				String userid = user.get(0).get("id").toString();
				System.out.println("Success"); 
				sendSuccessMessage(response, userid);
				
				HttpSession session = request.getSession();
				String sessionId = session.getId();
				session.setAttribute("usersid", userid);
				
				System.out.println(session.getAttribute("usersid"));

			} else {
				System.out.println(user);
				System.out.println("Fail");
				sendFailureMessage(response, "Invalid username and password!");
			}
		}catch (Exception e) {
			System.out.println("111 Fail !");
		}
		
		return;

	}
	
	@RequestMapping(value = "/GetUserInfo")
	public void GetUserInfo(HttpServletRequest request,
			HttpServletResponse response) {
		int usrId = 0;
//		usrId = SessionUtils.getUser(request).getId();
		HttpSession session = request.getSession();
		String sessionId = session.getId();
		System.out.println(sessionId);
		System.out.println(session.getAttribute("usersid"));
		
		sendSuccessMessage(response,(String)session.getAttribute("usersid"));
		
//		Date createTime = new Date(session.getCreationTime());
//		System.out.println(createTime);
		if (session.isNew()) {
			System.out.println("session创建成功，session的id是："+sessionId);
			}else {
			System.out.println("服务器已经存在session，session的id是："+sessionId);
			}

		return;
	}
	
}
	


	


  
    
    