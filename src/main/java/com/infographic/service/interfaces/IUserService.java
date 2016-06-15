package com.infographic.service.interfaces;

import java.util.List;
import java.util.Map;

import com.infographic.model.UserModel;

public interface IUserService {

//	List<Map<String, Object>> selectAllUsers();
	List<Map<String, Object>> selectUser(int userId);
	int getUserId(String userName);
//	boolean createUser(UserModel myUser);
//	boolean updateUser(UserModel myUser);
//	boolean updateUserProfile(UserModel myUser);
	List<Map<String, Object>> signin(String username, String password);
	
}
