package com.infographic.dao.interfaces;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;

public interface IInfographicDAO {
	int createInfographic(String user,String tag, String name,String url,String template_url);
}
