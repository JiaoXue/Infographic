package com.infographic.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.infographic.dao.interfaces.ITemplateDAO;
import com.infographic.model.TemplateModel;
import com.infographic.model.Template_TagModel;

public class TemplateDAOImpl implements ITemplateDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public int createTemplate(String user,String tag, String name,String url){
		
		String sql = "INSERT INTO template (name,author_id,url)"
        		+ " VALUES (?,?,?)";
		int createTemplateResult = jdbcTemplate.update(sql, name, user, url);
		
		String[] tags = tag.split(",");

		 int length = tags.length;
		 for(int i = 0;i<length;i++){
			 sql =  "INSERT INTO tag (name) SELECT '"+tags[i]+"'FROM DUAL WHERE NOT EXISTS(SELECT name FROM tag WHERE name = '"+tags[i]+"');";
				jdbcTemplate.update(sql);
		 }
		
		return createTemplateResult;
	}
	
}
