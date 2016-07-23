package com.infographic.dao;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
		
		Date now = new Date(); 
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String create_time = df.format( now ); 
		
		String sql = "INSERT INTO template (name,author_id,url,create_date)"
        		+ " VALUES (?,?,?,?)";
		int createTemplateResult = jdbcTemplate.update(sql, name, user, url,create_time);
		
		String[] tags = tag.split(",");
		String [] tagid = tag.split(",");
		List<Map<String, Object>> tag_id;
		
		 int length = tags.length;
		 for(int i = 0;i<length;i++){
			 sql =  "INSERT INTO tag (name) SELECT '"+tags[i]+"'FROM DUAL WHERE NOT EXISTS(SELECT name FROM tag WHERE name = '"+tags[i]+"');";
				jdbcTemplate.update(sql);
			 sql = "SELECT id From tag WHERE name ='"+tags[i]+"'";
			 
			 tag_id = (jdbcTemplate).queryForList(sql);
			 tagid[i] = tag_id.get(0).get("id").toString();
			 sql = "INSERT INTO template_tag (template_url,tag_id)"
					 + "VALUE(?,?)";
			 	jdbcTemplate.update(sql,url,tagid[i]);
		 }
		 System.out.println("create:"+createTemplateResult);
		return createTemplateResult;
	}
	
}
