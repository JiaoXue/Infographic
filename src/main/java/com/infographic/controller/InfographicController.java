package com.infographic.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date; 
import java.util.Calendar; 
import java.text.SimpleDateFormat; 

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

import com.infographic.service.InfographicServiceImpl;

@Controller
public class InfographicController extends baseController{

	@Autowired
	private InfographicServiceImpl infographicServiceImpl;
	
	@RequestMapping(value = "/saveInfographic")
	public void save_infographic(HttpServletRequest request, HttpServletResponse response) {
		
		String infographic_code = request.getParameter("code");
		String infographic_tag = request.getParameter("tags");
		String infographic_name = request.getParameter("InfographicName");
		String template_url = request.getParameter("TemplateUrl");
		HttpSession session = request.getSession();
		System.out.println(infographic_code);
		
		Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		String Time = dateFormat.format( now );  
		String userID = (String) session.getAttribute("usersid");
		String  infographic_url = Time + userID;
		
		String path = "/Users/apple/Documents/workspace/Infographic_Master/src/main/webapp/WEB-INF/view/infographic";
		System.out.println(path);

        String fileName = infographic_url + ".jsp";
        File f = new File(path,fileName); 
        if(f.exists()) { 
        	System.out.println("file already exist"); 
            System.out.println(f.getAbsolutePath()); 
            System.out.println(f.getName()); 
            System.out.println(f.length()); 
        } else { 
            f.getParentFile().mkdirs(); 
            try { 
                f.createNewFile();
                PrintWriter writer = new PrintWriter(f, "UTF-8");
                writer.println(infographic_code);
                writer.close();
                
                int CreateNum = infographicServiceImpl.createInfographic(userID,infographic_tag,infographic_name,infographic_url,template_url);
                Map<String, Object> result = new HashMap<String, Object>();
                if(CreateNum>0){
                	result.put(SUCCESS, true);
        			result.put(MSG, "Creating Infographic Successfully!");
        			System.out.println("Creating Infographic Successfully!"); 
                }else {
        			result.put(SUCCESS, false);
        			result.put(MSG, "Fail");
        			System.out.println("fail to create Infographic!"); 
        		}
        		sendObject(response, result);
                
            } catch (IOException e) { 
                System.out.println("fail to create Infographic!"); 
                e.printStackTrace(); 
            }   
        }
		return;

	}
	
}
