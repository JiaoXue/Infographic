package com.infographic.dao.interfaces;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;

import com.infographic.model.UserModel;

public interface IUserDAO {

//	List<Map<String, Object>> selectAllUsers();
	List<Map<String, Object>> selectUser(int id);
	int getUserId(String username);
//	boolean createUser(UserModel user);
//	boolean updateUser(UserModel user);
//	boolean updateUserProfile(UserModel user);
	List<Map<String, Object>> checkUser(String username,String password);	

}
