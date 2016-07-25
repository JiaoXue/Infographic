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
	
	@Override
	public List<Map<String, Object>> searchTemplate(String searching){
		List<Map<String, Object>> TemplateList = templateDAO.searchTemplate(searching);
		return TemplateList;
	}
	
	@Override
	public List<Map<String, Object>> getTemplateList(){
		List<Map<String, Object>> galleryList = templateDAO.getTemplateList();
		return galleryList;
	}
	
}
