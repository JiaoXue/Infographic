package com.infographic.service;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;

import com.infographic.service.interfaces.IInfographicService;
import com.infographic.dao.interfaces.IInfographicDAO;

public class InfographicServiceImpl implements IInfographicService{

	@Autowired
	IInfographicDAO iInfographicDAO;
	
	@Override
	public int createInfographic(String user,String tag,String name,String url,String template_url){
		int createTemplate = iInfographicDAO.createInfographic(user,tag,name,url,template_url);		
		return createTemplate;
	}
}
