<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
	
	<link href="<%=path %>/resources/homecss/css/bootstrap.css" rel='stylesheet' type='text/css' media="screen"/>
	<link href="<%=path %>/resources/indexCss/style.css" rel='stylesheet' type='text/css'  media="screen"/>
	<link href="<%=path %>/resources/css/button.css" rel="stylesheet" type="text/css" media="screen">
	<link href="<%=path %>/resources/css/semantic.css" rel="stylesheet" type="text/css" media="screen">
	<link href="<%=path %>/resources/css/font-awesome.min.css"  type="text/css" rel="stylesheet"  media="screen"> 
	
	<script src="<%=path %>/resources/js/jquery-1.11.3.js" type="text/javascript" ></script>
 	<script src="<%=path %>/resources/js/amazeui.js" type="text/javascript" ></script>
	<script src="<%=path %>/resources/js/accordion.js" type="text/javascript" ></script>
	<script src="<%=path %>/resources/homecss/js/menu_jquery.js" type="text/javascript" ></script> 
	<script src="<%=path %>/resources/js/semantic.js" type="text/javascript" ></script> 
	<script src="<%=path %>/resources/js/icheck.js" type="text/javascript" ></script>
	<script src="<%=path %>/resources/js/bootstrap-wysiwyg.js" type="text/javascript" ></script>
	
	<!-- resizable & draggable -->
	<script src="<%=path %>/resources/js/jquery-ui.js" type="text/javascript" ></script>
	<link href="<%=path %>/resources/css/jquery-ui.css" rel="stylesheet" type="text/css"/>
	<!-- resizable & draggable -->
	
	<!-- colorpicker -->
	<link href="<%=path %>/resources/colorpicker/css/octicons.min.css" rel="stylesheet">
	<link href="<%=path %>/resources/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
	<link href="<%=path %>/resources/colorpicker/css/main.css" rel="stylesheet"> 
	<script src="<%=path %>/resources/colorpicker/js/bootstrap-colorpicker.js"></script>
	<!-- colorpicker -->
	
	<!-- jquery Ruler -->
	<script src="<%=path %>/resources/js/jquery-ruler.js" type="text/javascript" ></script>
	<link href="<%=path %>/resources/css/jquery-ruler.css" rel="stylesheet" type="text/css" media="screen">
	<!-- jquery Ruler -->
	
	<!-- add Text -->
	<script src="<%=path %>/resources/addText/dist/js/wangEditor.js" type="text/javascript" ></script>
	<link href="<%=path %>/resources/addText/dist/css/wangEditor.css" rel="stylesheet" type="text/css" media="screen">
	<!-- add Text -->
	
	<!-- add chart -->
	<script src="<%=path %>/resources/chart/echarts.js" type="text/javascript" ></script>
	<script src="<%=path %>/resources/chart/theme/dark.js" type="text/javascript" ></script>
	<script src="<%=path %>/resources/chart/theme/infographic.js" type="text/javascript" ></script>
	<script src="<%=path %>/resources/chart/theme/macarons.js" type="text/javascript" ></script>
	<script src="<%=path %>/resources/chart/theme/roma.js" type="text/javascript" ></script>
	<script src="<%=path %>/resources/chart/theme/shine.js" type="text/javascript" ></script>
	<script src="<%=path %>/resources/chart/theme/vintage.js" type="text/javascript" ></script>	
	<!-- add chart -->
	<!-- add tag -->
	<script src="<%=path %>/resources/tag/js/tag-it.js" type="text/javascript" ></script>
    <link href="<%=path %>/resources/tag/css/jquery.tagit.css" rel="stylesheet" type="text/css">
    <link href="<%=path %>/resources/tag/css/tagit.ui-zendesk.css" rel="stylesheet" type="text/css">
	<!-- add tag -->