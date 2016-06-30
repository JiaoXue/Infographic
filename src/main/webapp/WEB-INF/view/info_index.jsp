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

<link href="<%=path %>/resources/homecss/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="<%=path %>/resources/indexCss/style.css" rel='stylesheet' type='text/css' />
<link href="<%=path %>/resources/css/semantic.css" rel='stylesheet' type='text/css' />
<link href="<%=path %>/resources/css/font-awesome.min.css"  rel="stylesheet" type="text/css">

<script type="text/javascript" src="<%=path %>/resources/homecss/js/jquery-1.11.1.min.js"></script>
<script src="<%=path %>/resources/js/semantic.js"></script>
<script src="<%=path %>/resources/homecss/js/menu_jquery.js"></script>
<script type="application/x-javascript"> 
	addEventListener("load", function() { 
		setTimeout(hideURLbar, 0); }, false); 
	function hideURLbar(){ window.scrollTo(0,1);
	} 
</script>

<script type="text/javascript"> 
$(document).ready(function(){
	$.ajax({
		   type: "POST",
		   url:'<%=path %>/GetUserInfo.action',
		   data: "web",
		   success: function(data){
			   if (data.success) {
 				  alert(data.msg); 
				  
				} else {
	 			  alert(data.msg);
				}
		   } 
		});
	});
</script>

</head>

<body style="height:100%;">

<div id="wrapper">
<!----------------------header begin----------------------->

	<div class="header">	
  	     <div class="logo" style="padding: 15px;">
			<h1>Infographic</h1>
		 </div>
		 <div class="top_right">
		   <ul style="color:black;">
		    <li><img src="<%=path %>/resources/images/head/1.JPG" style="height:45px;border-radius:100px;" alt=""/></li>
			<li><a href="">Sign Out</a></li>|
		    <li class="login" >
				 <div id="loginContainer"><a href="#" id="loginButton"><span>Account</span></a>
					  <div id="loginBox">                
						  <form id="loginForm">
			                <fieldset id="body">
			                	<fieldset>
			                          <label for="Username">Username</label>
			                          <input type="text" name="Username" id="Username">
			                    </fieldset>
			                    <fieldset>
			                            <label for="password">Password</label>
			                            <input type="password" name="password" id="password">
			                     </fieldset>
			                    <input type="submit" id="save" value="Save">
			            	</fieldset>
						   </form>
				        </div>
			      </div>
			  </li>
		   </ul>
	     </div>
		 <div class="clearfix"></div>
	</div>
<!----------------------header end----------------------->

<!----------------------container begin----------------------->	
	<div class="container">
				<div class="content"><!-- start content -->
					<h5>Infographic Templates</h5>
					<h6 style="margin:30px auto;">Choose a Template to create your infographic.</h6>
					
					<div style="width:100%;align:center;">	
						<div style="width:30%;" class="ui action input">
						  <input type="text" placeholder="Search for infographics">
						  <button class="ui icon button">
						    <i class="fa fa-search"></i>
						  </button>
						</div>
					</div>
					
					<ul class="hover_pack right">
						<li>
							 <a href="" class="b_btn"><span > <h4>Football</h4></span> </a>
						</li>				 
						<li>
							<a href="">
						    <img src="<%=path %>/resources/images/templates/football/football_1.png" class="img-responsive border-radius" alt=""/></a>
						</li>		
						<li>
							<a href="<%=path %>/football_1" >
				            <img src="<%=path %>/resources/images/templates/football/football_6.jpg" class="img-responsive border-radius" alt=""/></a>
						</li>	
						<div class="clear"></div>	
					</ul>
					<ul class="hover_pack left">
						<li>
							 <a href="" class="b_btn"><span > <h4>Text</h4></span> </a>
						</li>
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
							 <a href="" class="b_btn"><span > <h4>New In</h4></span> </a>
						</li>		
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
							 <a href="" class="b_btn"><span > <h4>Euros</h4></span> </a>
						</li>
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
					<div class="clear"></div>	
				</div>
	</div>
	<div id='push'></div>
</div>
<!----------------------container end----------------------->	

<!----------------------footer begin----------------------->	

	<div id = "footer" class="grid_2v footer" style ="border-top: solid 1px rgba(29, 43, 49, 0.34);">
		    <div class="grid_3">
		  <div>
		  	 <ul id="footer-links">
				<li><a href=" ">Support</a></li>
				<li><a href=" ">About Us</a></li>
				<li><a href=" ">FAQ</a></li>
	         </ul>
	         <p>Copyright &copy; 2016</p>
		  </div>
		</div>
	</div>

<!----------------------footer end----------------------->			
</body>



</html>