package com.infographic.dao.interfaces;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;

import com.infographic.model.GalleryModel;

public interface IGalleryDAO {
	List<Map<String, Object>> getGalleryList();
}
