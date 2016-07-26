<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>

<meta name="viewport" content="width=device-width, height=device-height,initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<jsp:include page="include.jsp" >
	<jsp:param name="path" value="<%=path %>"/>
</jsp:include>
<script>
$(document).ready(function(){
$("#templateBox").hide();
});
</script>
<script>
function searchT(){
	var searching = $("#templateSearching").val();
	$.ajax({
		   type: "POST",
		   url:'<%=path %>/SearchTemplate.action',
		   data: "port=web&search="+searching,
		   success: function(data){
			   if (data.SUCCESS) {
				   $("#templateBox").empty();
				   $("#templateBox").show();
				   var length = data.data.length;
				   var myDiv = document.getElementById('templateBox');
				   var ul = document.createElement("ul");
				   ul.setAttribute("class","hover_pack right");
				   ul.innerHTML="<li style='margin:auto 0px;'><a class='b_btn'><span > <h4>Searching Result</h4></span> </a></li>";
				   myDiv.appendChild(ul);
				  
				  for(var i = 0;i<length;i++){
					  
					  var a = document.createElement("a");
					  a.setAttribute("id",data.data[i].url); 
					  a.setAttribute("href","<%=path %>/create_infographic.do?url=template/"+data.data[i].url+".jsp");
					  a.setAttribute("class","width25"); 
					  img = document.createElement("img");
					  img.src="<%=path %>/resources/images/templates/"+data.data[i].url+".png";
					  img.setAttribute("class","border-radius width25")
				  	  a.appendChild(img);
				  	  myDiv.appendChild(a);
				  }   
				} else {
					alert(data.msg);			   
				}
		   } 
		});		
}
</script>

</head>

<body style="height:100%;">
<div id="wrapper">
<!----------------------header begin----------------------->

	<jsp:include page="/WEB-INF/view/header.jsp">
	   <jsp:param name="path" value="<%=path %>"/>
	</jsp:include>
	
<!----------------------header end----------------------->

<!----------------------container begin----------------------->	
	<div class="container">
				<div class="content"><!-- start content -->
					<h5>Infographic Templates</h5>
					<h6 style="margin:30px auto;">Choose a Template to create your infographic.</h6>
					
					<div style="width:100%;align:center;">	
						<div style="width:30%;" class="ui action input">
						  <input id = "templateSearching" type="text" placeholder="Search for infographics">
						  <button class="ui icon button" onclick="searchT();"><i class="fa fa-search"></i></button>
						</div>
					</div>
					<div id="templateBox" style="margin:20px 0px;">
					</div> 
					<div id = "Servertemplate">
						<ul class="hover_pack right">
							<li><a href="" class="b_btn"><span > <h4>football</h4></span> </a></li>
							<li><a href="" class="b_btn"><span > <h4>EUROS</h4></span> </a></li>
							<li><a href="" class="b_btn"><span > <h4>New in</h4></span> </a></li>
						</ul>
						
						
						<ul class="hover_pack right">			 
							<li>
								<a href="<%=path %>/football_1" >
					            <img src="<%=path %>/resources/images/templates/football/football_6.jpg" class="img-responsive border-radius" alt=""/></a>
							</li>
							<li>
								<a href="">
							    <img src="<%=path %>/resources/images/templates/football/football_1.png" class="img-responsive border-radius" alt=""/></a>
							</li>		
								
							
							<div class="clear"></div>
						</ul>
						<ul class="hover_pack left">
							<li>
								<a href="">
					            <img src="<%=path %>/resources/images/templates/football/football_3.jpeg" class="img-responsive border-radius" alt=""/></a>
							</li>				
							<li>
								<a href="">
					            <img src="<%=path %>/resources/images/templates/football/football_4.png" class="img-responsive border-radius" alt=""/></a>
							</li>	
								
							<div class="clear"></div>																																						
						</ul>
						<ul class="hover_pack left right">		
							<li>
								<a href="" >
					            <img src="<%=path %>/resources/images/templates/football/football_5.jpeg" class="img-responsive border-radius" alt=""/></a>
							</li>				
							<li>
								<a href="">
					            <img src="<%=path %>/resources/images/templates/football/football_2.jpeg" class="img-responsive border-radius" alt=""/></a>
							</li>
							<div class="clear"></div>																																						
						</ul>
						<ul class="hover_pack left">
							<li>
								<a href="" >
					            <img src="<%=path %>/resources/images/templates/people.png" class="img-responsive border-radius" alt=""/></a>
							</li>	
								
							<li>
								<a href="">
					            <img src="<%=path %>/resources/images/templates/NewTemplate.jpg" class="img-responsive border-radius" alt=""/></a>
							</li>	
							<div class="clear"></div>																																						
						</ul>
					</div>
					<div class="clear"></div>	
				</div>
	</div>
	<div id='push'></div>
</div>
<!----------------------container end----------------------->	

<!----------------------footer begin----------------------->	

<%-- 	<jsp:include page="/WEB-INF/view/footer.jsp">
	   <jsp:param name="path" value="<%=path %>"/>
	</jsp:include> --%>

<!----------------------footer end----------------------->			
</body>



</html>