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
import com.infographic.controller.baseController;

import com.infographic.model.GalleryModel;
import com.infographic.service.GalleryServiceImpl;
import com.infographic.service.interfaces.IGalleryService;
import com.infographic.dao.interfaces.IGalleryDAO;

@Controller
public class galleryController extends baseController{

	@Autowired
	private IGalleryDAO iGalleryDAO;
	@Autowired
	private GalleryServiceImpl galleryServiceImpl;
	
	@RequestMapping(value = "/getgallery")
	public void getgallery(HttpServletRequest request,HttpServletResponse response){
		
		
		try{
			List<Map<String, Object>> galleryList = galleryServiceImpl.getGalleryList();
			Map<String, Object> result = new HashMap<String, Object>();
			if (galleryList != null) {
				result.put("data", galleryList);
				result.put("SUCCESS", true);
				sendObject(response, result);

			} else {
				System.out.println("No Gallery");
				sendFailureMessage(response, "Invalid username and password!");
			}
		}catch (Exception e) {
			System.out.println("Fail");
		}
		
		return;
	}
	
}
