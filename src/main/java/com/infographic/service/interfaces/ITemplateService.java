package com.infographic.service.interfaces;

import java.util.List;
import java.util.Map;

public interface ITemplateService {

	int createTemplate(String user,String tag,String name,String url);
	List<Map<String, Object>> searchTemplate(String searching);
	List<Map<String, Object>> getTemplateList();
}
