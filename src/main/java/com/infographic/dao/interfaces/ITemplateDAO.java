package com.infographic.dao.interfaces;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;

public interface ITemplateDAO {

	int createTemplate(String user,String tag, String name,String url);

	List<Map<String, Object>> searchTemplate(String searching);
	
	List<Map<String, Object>> getTemplateList();
}
