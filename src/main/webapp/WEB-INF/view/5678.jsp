<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>

<head>
	<title>test page 2</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, height=device-height,initial-scale=1" />
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
<!-- add tag script -->
<script type="text/javascript">
	$(document).ready(function() {
		$("#tag").tagit({
				availableTags: ["c++", "java", "php", "javascript", "ruby", "python", "c"],
				autocomplete: {delay: 0, minLength: 1}
				});
		});
</script>
<!---------- save infographic -------------->
<script>
function saveTemplate(){
	$("#saveModal")
	  .modal('show')
	;		
} 
	function saveInfographic(){
		alert($("#tag").tagit("assignedTags"));
		var divContent = $(".infographic_border").html();
		alert(divContent);
		$.ajax({
	  		   type: "POST",
	  		   url:'<%=path %>/saveinfographic.action',
	  		   data: "port=web&code="+divContent+"tags="+$("#tag").tagit("assignedTags"),
	  		   success: function(data){
	  			   if (data.SUCCESS) {		   
	  				    alert("success");			   
	 				} else {
	 					alert("Fail");
	 				}
	  		   } 
	  		});	
	}
</script>

</head>
    
<body>					  
							<button class="ui teal basic button" style="margin-top: 10px;width:10%;" onclick="saveTemplate();">save</button>						  
						  	<div id = "saveModal" class="ui modal" style="height:350px;width:500px;">
								<div class="header" style="text-align:center;">
									<h3>Save Template</h3> 
								</div>
								<div style="text-align:center;padding:15px 10px;"> 
									
									<div class="ui input" style="width:95%;margin:5px 10px;">
										 <input id = "TemplateName" type="text" placeholder="Template Name" >
									</div>
									<ul id="tag" style="width:95%;margin: 5px 15px;border-radius: 0.28571429rem;">
										<li>football</li>
									</ul>
								
								</div>
								<div style="text-align:center;padding:5px 0px;">
									<div style="margin: 45px 10px;">
										<button class="ui teal basic button" onclick="saveInfographic();">save</button>
									</div>
								</div>
							</div>		
		
		<div  class="infographic_border" >
			<div id="infographic" class="infographic_space" style="background-color:white;border:1px solid black;">			
			</div>
		</div>
		<div class="sidebar2">
			<div id="rightbar" class="ui styled accordion" style="padding: 0.75em 1em;">
				<table id = "itemtable" class="ui teal table" >
				  <tbody>
				  </tbody>
				</table>
			</div>
		</div>
</body>

</html>