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


<script>
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
					  
				  }   
				} else {
					alert(data.data);			   
				}
		   } 
		});	
	
}
</script>
</head>
    
<body>					  
<h1>testing page 2</h1>
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
		<input id = "templateSearching">
		<button onclick="searchT();"></button>
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