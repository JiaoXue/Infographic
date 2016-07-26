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


</script><script type="text/javascript">
	$(document).ready(function() {
		$("#tag").tagit({
				availableTags: ["c++", "java", "php", "javascript", "ruby", "python", "c"],
				autocomplete: {delay: 0, minLength: 1}
				});
		$(".text").attr("height","auto");
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
		
		<input id = "templateSearching">
		<button onclick="searchT();"></button>
		<div id  = "templateBox"></div> 
		<button onclick="Infographic();">save infogrphic</button>

		<div id = "infographic">
			<jsp:include page= '<%=request.getParameter("url")%>'>
				<jsp:param name="path" value="<%=path %>"/>
			</jsp:include>
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