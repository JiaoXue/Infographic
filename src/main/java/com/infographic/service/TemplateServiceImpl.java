package com.infographic.service;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;

import com.infographic.dao.interfaces.IGalleryDAO;
import com.infographic.dao.interfaces.ITemplateDAO;
import com.infographic.service.interfaces.ITemplateService;

public class TemplateServiceImpl implements ITemplateService{

	@Autowired
	ITemplateDAO templateDAO;
	
	@Override
	public int createTemplate(String user,String tag,String name,String url){
		
		int createTemplate = templateDAO.createTemplate(user,tag,name,url);
		
		return createTemplate;
	}
	
}
