package com.infographic.model;

import java.util.Date;

public class InfographicModel {

	private int Id;
	private int Template_id;
	private String Name;
	private int Author_id;
	private String Url;
	private Date Create_date;
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public int getTemplate_id() {
		return Template_id;
	}
	public void setTemplate_id(int template_id) {
		Template_id = template_id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getAuthor_id() {
		return Author_id;
	}
	public void setAuthor_id(int author_id) {
		Author_id = author_id;
	}
	public String getUrl() {
		return Url;
	}
	public void setUrl(String url) {
		Url = url;
	}
	public Date getCreate_date() {
		return Create_date;
	}
	public void setCreate_date(Date create_date) {
		Create_date = create_date;
	}
	
}
