package com.infographic.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import com.infographic.dao.interfaces.IGalleryDAO;
import com.infographic.model.GalleryModel;
import org.apache.ibatis.annotations.Param;

public class GalleryDAOImpl implements IGalleryDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Map<String, Object>> getGalleryList(){
		String sql = "SELECT * FROM gallery";
		List<Map<String, Object>> gallery = jdbcTemplate.queryForList(sql);
		return gallery;
	}
	
	@Override
	public List<Map<String, Object>> searchgallery(String searching){
		String sql = "SELECT * FROM tag where name = '"+ searching + "'";
		List<Map<String, Object>> tag = jdbcTemplate.queryForList(sql);
		
		String tag_id = tag.get(0).get("id").toString();
		
		String sql_1 = "SELECT * FROM gallery_tag where tag_id = '"+ tag_id + "'";
		List<Map<String, Object>> gallery_id = jdbcTemplate.queryForList(sql_1);
		
		ArrayList id = new ArrayList();
		int length = gallery_id.size();
		for(int i = 0;i < length;i++){
			id.add(gallery_id.get(i).get("gallery_id").toString());
		}
		
		List<Map<String, Object>> gallery = new ArrayList<Map<String, Object>>();
		
		for(int i = 0;i < length;i++){
			String sql_2 = "SELECT * FROM gallery where id = '"+ id.get(i) + "'";
			gallery.add(jdbcTemplate.queryForList(sql_2).get(0));	
	    }
		
		return gallery;
	}
}