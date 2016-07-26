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

import com.infographic.service.TemplateServiceImpl;


@Controller
public class TemplateController extends baseController{
	@Autowired
	ServletContext servletContext;
//	@Autowired
//	private IInfographicDAO iInfographicDAO;
	@Autowired
	private TemplateServiceImpl templateServiceImpl;
	
	@RequestMapping(value = "/getTemplate")
	public void getgallery(HttpServletRequest request,HttpServletResponse response){
		
		
		try{
			List<Map<String, Object>> TemplateList = templateServiceImpl.getTemplateList();
			Map<String, Object> result = new HashMap<String, Object>();
			System.out.println(TemplateList);
			if (TemplateList != null) {
				result.put("data", TemplateList);
				result.put("SUCCESS", true);
				sendObject(response, result);

			} else {
				System.out.println("No Template");
				sendFailureMessage(response, "Invalid username and password!");
			}
		}catch (Exception e) {
			System.out.println("Fail");
		}
		
		return;
	}
	
	
	
	@RequestMapping(value = "/SearchTemplate")
	public void search_infographic(HttpServletRequest request, HttpServletResponse response) {
		String searching = request.getParameter("search");
		try{
			List<Map<String, Object>> TemplateList = templateServiceImpl.searchTemplate(searching);
			System.out.println(TemplateList);
			Map<String, Object> result = new HashMap<String, Object>();
			if (TemplateList != null) {
				result.put("data", TemplateList);
				result.put("SUCCESS", true);
				sendObject(response, result);

			} else {
				System.out.println("Sorry, we don't have Related template in our gallery.");
				sendFailureMessage(response, "Sorry, we don't have Related template in our gallery. You could create your own template.");
			}
		}catch (Exception e) {
			System.out.println("Fail");
			sendFailureMessage(response, "Sorry, we don't have Related template in our gallery. You could create your own template.");
		}
		
		return;
	}
		
	
	@RequestMapping(value = "/saveTemplate")
	public void save_template(HttpServletRequest request, HttpServletResponse response) {
		
		String template_code = request.getParameter("code");
		String template_tag = request.getParameter("tags");
		String template_name = request.getParameter("tamplateName");
		HttpSession session = request.getSession();
		System.out.println(template_code);
		
		Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		String Time = dateFormat.format( now );  
		String userID = (String) session.getAttribute("usersid");
		String  template_url = Time + userID;
		
		String path = "/Users/apple/Documents/workspace/Infographic_Master/src/main/webapp/WEB-INF/view/template";
		System.out.println(path);

        String fileName = template_url + ".jsp";
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
                writer.println(template_code);
                writer.close();
                
                int CreateNum = templateServiceImpl.createTemplate(userID,template_tag,template_name,template_url);
                Map<String, Object> result = new HashMap<String, Object>();
                if(CreateNum>0){
                	result.put(SUCCESS, true);
        			result.put(MSG, "Creating Template Successfully!");
        			System.out.println("Creating Template Successfully!"); 
                }else {
        			result.put(SUCCESS, false);
        			result.put(MSG, "没有修改成功！");
        			System.out.println("fail to create Template!"); 
        		}
        		sendObject(response, result);
                
            } catch (IOException e) { 
                System.out.println("fail to create Template!"); 
                e.printStackTrace(); 
            }   
        }
		return;

	}
}
