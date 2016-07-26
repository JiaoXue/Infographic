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

<jsp:include page="include.jsp" >
	<jsp:param name="path" value="<%=path %>"/>
</jsp:include>


<%-- <script>
function searchT(){
	var searching = $("#templateSearching").val();
	$.ajax({
		   type: "POST",
		   url:'<%=path %>/getTemplate.action',
		   data: "port=web&search="+searching,
		   success: function(data){
			   if (data.SUCCESS) {	
				  var length = data.data.length;
				  for(var i = 0;i<length;i++){
					  var myDiv = document.getElementById('templateBox');
					  var a = document.createElement("a");
					  a.setAttribute("id",data.data[i].url); 
					  a.setAttribute("href","<%=path %>/info_index.do?url="+data.data[i].url);
					  a.setAttribute("class","img-responsive border-radius"); 
					  img = document.createElement("img");
					  img.src="<%=path %>/resources/images/templates/"+data.data[i].url+".png";
				  	  a.appendChild(img);
				  	  myDiv.appendChild(a);
				  }   
				} else {
					alert(data.data);			   
				}
		   } 
		});	
	
}
</script> --%>
<script type="text/javascript">
	$(document).ready(function() {
		$("#tag").tagit({
				availableTags: ["c++", "java", "php", "javascript", "ruby", "python", "c"],
				autocomplete: {delay: 0, minLength: 1}
				});
		});
</script>
<script>
function Infographic(){
	var divContent = $("#div").html();
	$("#saveModal")
	  .modal('show')
	;		
} 
function save_infographic(){
	var tagString = $("#tag").tagit("assignedTags");
	var divContent = $("#infographic").html();
	var templateName = $("#InfographicName").val();
	var url = "201607250000211";
	$.ajax({
		   type: "POST",
		   url:'<%=path %>/saveInfographic.action',
		   data: "port=web&code="+divContent+"&tags="+ tagString +"&InfographicName="+ templateName+"&TemplateUrl="+url,
		   success: function(data){
			   if (data.SUCCESS) {	
				   alert(data.msg);  
				} else {
					alert(data.msg);		   
				}
		   } 
		});	
}


</script>
</head>
    
<body>					  
<h1>testing page 2</h1>
		
<!-- 		<input id = "templateSearching">
		<button onclick="searchT();"></button>
		<div  id  = "templateBox"></div> -->
		<button onclick="Infographic();">save infogrphic</button>
		<div  id  = "infographic">
		
			<div id="infographic" class="infographic_space" style="height: 378px; width: 640px;">			
			<div class="a ui-draggable ui-draggable-handle ui-resizable" id="3image" name="3" style="position: relative; width: 680px; height: 377px;"><img src="/Infographic_Master/resources/images/gallery/3.jpg" id="3.jpg" name="3" ondblclick="change(this.name);"><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div></div><div class="a ui-draggable ui-draggable-handle ui-resizable" id="19image" name="19" style="position: relative; left: 19px; top: -38px;"><img src="/Infographic_Master/resources/images/gallery/bbcsport.png" id="bbcsport.png" name="19" ondblclick="change(this.name);"><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div></div></div>
		
		
		</div>
		
		<div id = "saveModal" class="ui modal" style="height:350px;width:500px;">
					<div class="header" style="text-align:center;">
						<h3>Save Infographic</h3> 
					</div>
					<div style="text-align:center;padding:15px 10px;"> 
									
						<div class="ui input" style="width:95%;margin:5px 10px;">
							<input id = "InfographicName" type="text" placeholder="Infographic Name" >
						</div>
						<ul id="tag" style="width:95%;margin: 5px 15px;border-radius: 0.28571429rem;">
							<li>football</li>
						</ul>
					</div>
					<div style="text-align:center;padding:5px 0px;">
						<div style="margin: 45px 10px;">
							<button class="ui teal basic button" onclick="save_infographic();">save</button>
						</div>
					</div>
			</div>
		
		
<!-- 		<div class="sidebar2">
			<div id="rightbar" class="ui styled accordion" style="padding: 0.75em 1em;">
				<table id = "itemtable" class="ui teal table" >
				  <tbody>
				  </tbody>
				</table>
			</div>
		</div> -->
</body>

</html>