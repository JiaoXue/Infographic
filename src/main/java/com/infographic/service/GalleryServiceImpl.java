package com.infographic.service;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;

import com.infographic.dao.GalleryDAOImpl;
import com.infographic.dao.interfaces.IGalleryDAO;
import com.infographic.dao.interfaces.IUserDAO;
import com.infographic.model.GalleryModel;
import com.infographic.service.interfaces.IGalleryService;

public class GalleryServiceImpl implements IGalleryService{
	
	@Autowired
	IGalleryDAO galleryDAO;
	
	@Override
	public List<Map<String, Object>> getGalleryList(){
		List<Map<String, Object>> galleryList = galleryDAO.getGalleryList();
		
		return galleryList;
	}
}
