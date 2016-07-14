package com.infographic.dao;

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
}
