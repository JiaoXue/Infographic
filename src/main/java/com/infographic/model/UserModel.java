package com.infographic.model;

import java.security.Timestamp;
import java.util.Date;

public class UserModel{

	private int Id;
	private String Username;
	private String Password;
	private int Gender;
	private String Email;
	private String Tel;
	private Date Create_date;
	private Date Last_signin;
	private Timestamp Last_change;
	private String Photo_url;

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public int getGender() {
		return Gender;
	}

	public void setGender(int gender) {
		Gender = gender;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getTel() {
		return Tel;
	}

	public void setTel(String tel) {
		Tel = tel;
	}

	public Date getCreate_date() {
		return Create_date;
	}

	public void setCreate_date(Date create_date) {
		Create_date = create_date;
	}

	public Date getLast_signin() {
		return Last_signin;
	}

	public void setLast_signin(Date last_signin) {
		Last_signin = last_signin;
	}

	public Timestamp getLast_change() {
		return Last_change;
	}

	public void setLast_change(Timestamp last_change) {
		Last_change = last_change;
	}

	public String getPhoto_url() {
		return Photo_url;
	}

	public void setPhoto_url(String photo_url) {
		Photo_url = photo_url;
	}



	
	
	
}
