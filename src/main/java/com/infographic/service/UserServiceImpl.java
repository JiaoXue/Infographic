package com.infographic.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.infographic.dao.UserDAOImpl;
import com.infographic.dao.interfaces.IUserDAO;
import com.infographic.model.UserModel;
import com.infographic.service.interfaces.IUserService;


public class UserServiceImpl implements IUserService{
	
	@Autowired
	IUserDAO userDAO;
	
	@Override
	public List<Map<String, Object>> selectUser(int userId) {
		
		List<Map<String, Object>> myUserList = userDAO.selectUser(userId);
		
		return myUserList;
		
	}

	@Override
	public List<Map<String, Object>> signin(String username, String password) {	
		return userDAO.checkUser(username, password);
	}
 
	@Override
	public int getUserId(String username) {
		return userDAO.getUserId(username);
	}
	


}
