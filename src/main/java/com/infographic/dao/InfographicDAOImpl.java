package com.infographic.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.HashMap;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.infographic.dao.interfaces.IInfographicDAO;



public class InfographicDAOImpl implements IInfographicDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public int createInfographic(String user,String tag, String name,String url,String template_url){
		
		Date now = new Date(); 
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String create_time = df.format( now ); 
		
		String sql = "INSERT INTO infographic (name,author_id,url,create_date,template_url)"
        		+ " VALUES (?,?,?,?,?)";
		int createTemplateResult = jdbcTemplate.update(sql, name, user, url,create_time,template_url);
		
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
			 sql = "INSERT INTO infographic_tag (infographic_url,tag_id)"
					 + "VALUE(?,?)";
			 	jdbcTemplate.update(sql,url,tagid[i]);
		 }
		 System.out.println("create:"+createTemplateResult);
		return createTemplateResult;
	}
	
}
