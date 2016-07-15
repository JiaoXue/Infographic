package com.infographic.service.interfaces;

import java.util.List;
import java.util.Map;

import com.infographic.model.GalleryModel;

public interface IGalleryService {

	List<Map<String, Object>> getGalleryList();
	List<Map<String, Object>> searchgallery(String searching);
}
