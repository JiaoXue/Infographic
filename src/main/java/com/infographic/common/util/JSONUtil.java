package com.infographic.common.util;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class JSONUtil {

	public static String toJson(Object object) {
		Gson gson = new GsonBuilder().create();
		return gson.toJson(object);
	}

	public static String toJson(Object object, String dateFormat) {
		Gson gson = new GsonBuilder().setDateFormat(dateFormat).create();
		return gson.toJson(object);
	}

	@SuppressWarnings("unchecked")
	public static Object fromJson(String json, @SuppressWarnings("rawtypes") Class classOfT) {
		Gson gson = new GsonBuilder().create();
		return gson.fromJson(json, classOfT);
	}

}
