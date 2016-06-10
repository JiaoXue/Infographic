package com.infographic.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.infographic.dao.interfaces.IUserDAO;
import com.infographic.model.UserModel;


public class UserDAOImpl implements IUserDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;

/*	@Override
	public List<Map<String, Object>> selectAllUsers() {
		String sql = "SELECT * FROM infographics_user";
		List<Map<String, Object>> myUsersList = jdbcTemplate.queryForList(sql);
		return myUsersList;
	}*/

	@Override
	public List<Map<String, Object>> selectUser(int id) {
		String sql = "SELECT * FROM infographics_user where id = "+ id;
		List<Map<String, Object>> user = jdbcTemplate.queryForList(sql);
		return user;
	}
	
	@Override
	public String checkUser(String username, String password) {
		String sql = "SELECT id FROM infographics_user where username = '" + username + "' & password = '" + password + "'";
		List<Map<String, Object>> users = jdbcTemplate.queryForList(sql);
		
		if(users.isEmpty())
			return "unsuccess";
		else 
			return users.get(0).get("user_id").toString();
	}
	
	@Override
	public int getUserId(String username) {
		String sql = "SELECT id FROM infographics_user where username = '" + username + "'";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

/*	@Override
	public boolean createUser(UserModel user) {
		// insert
        String sql = "INSERT INTO infographics_user (username,password"
        				 + ",gender,email,tel)"
        				 + " VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        
        KeyHolder keyHolder = new GeneratedKeyHolder();
        
        int result = jdbcTemplate.update(sql, user.getId(), user.getUsername(),user.getPassword()
                ,user.getGender(), user.getEmail(),user.getTel());
        
        if (result>0)
        	return true;
        else
        	return false;
        
	}*/
	
/*	@Override
	public boolean updateUser(UserModel user) {
		if (user.getId() > 0) {
	        // update
	        String sql = "UPDATE infographics_user SET "
	        		  		+ "username = ?" 
	        		  		+ ",password = ?"
	        		  		+ ",gender = ?"
	        		  		+ ",email = ?"
	        		  		+ ",tel = ?"
	        		  		+ " WHERE id = ?"; 
	        
	        
	        jdbcTemplate.update(sql, user.getId(),
	        		user.getUsername(),
	        		user.getPassword(),
	        		user.getGender(),
	        		user.getEmail(),
	        		user.getTel(),
	        		user.getId());
	        
	        return true;
	        
	    } else {
	        return false;
	        
	    }
		
	}*/
	


	
/*	@Override
	public boolean updateUserProfile(UserModel user) {
		if (user.getId() > 0) {
	        // update
	        String sql = "UPDATE infographics_user SET "
	        		  		+ ",email = ?"
	        		  		+ ",tel = ?"
	        		  		+ " WHERE id = ?"; 
	        
	        
	        jdbcTemplate.update(sql,
	        		user.getEmail(),
	        		user.getTel(),
	        		user.getId());
	        
	        return true;
	        
	    } else {
	        return false;
	        
	    }
	}*/
	
}
