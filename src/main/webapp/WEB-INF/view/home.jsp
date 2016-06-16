<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html style="height:100%;">
<head style="height:100%;">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>

<meta name="viewport" content="width=device-width, height=device-height,initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="<%=path %>/resources/homecss/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="<%=path %>/resources/indexCss/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="<%=path %>/resources/css/button.css" type="text/css" media="screen">
<script type="text/javascript" src="<%=path %>/resources/homecss/js/jquery-1.11.1.min.js"></script>
<script src="<%=path %>/resources/homecss/js/menu_jquery.js"></script>
<script type="application/x-javascript"> 
	addEventListener("load", function() { 
		setTimeout(hideURLbar, 0); }, false); 
	function hideURLbar(){ window.scrollTo(0,1);
	} 
</script>
</head>

<!----------------------body----------------------->

<body style="height:100%;">
<div id="wrapper">
<!----------------------header begin----------------------->

	<div class="header">	
  	     <div class="logo" style="padding: 15px;">
			<h1>Infographic</h1>
		 </div>
		 <div class="top_right">
		   <ul style="color:black;">
		    <li><img src="<%=path %>/resources/images/head/h_1.JPG" style="height:45px;border-radius:100px;" alt=""/></li>
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
<!----------------------body end----------------------->

<!----------------------container begin----------------------->	
	<div class="container">
		<div class = "welcome">
			Welcome to Infographic
		</div>
		<div style="width:51%; margin: 50px auto;">
			<a href="#" style="margin:0px 15px;" class=" button button-action button-pill button-large">Create a Template</a>
			<a href="#" class=" button button-action button-pill button-large">Create an Infographic</a>
		</div>
		<div style="width:53%; margin:auto;">		
			<img src="<%=path %>/resources/indexCss/back.jpg" alt=""/>
		</div>
	</div>
	<div id='push'></div>
</div>
<!----------------------container end----------------------->	

<!----------------------footer begin----------------------->	

	<div id = "footer" class="grid_2v footer" style ="border-top: solid 1px rgba(29, 43, 49, 0.34);">
<!-- 		<div class="container">
			<div class="col-md-3 col_2">
				<h3>Searching<br>Keywords</h3>
			</div>
			<div class="col-md-9 col_5">
				<div class="col_1_of_5 span_1_of_5">
					<ul class="list1">
					    <li><a href="">Football</a></li>
			            <li><a href="">Basketball</a></li>
			           
		            </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<ul class="list1">
					    <li><a href="">Rugby Union</a></li>
			            <li><a href="">Rugby League</a></li>
			            
		            </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<ul class="list1">
					     <li><a href="">Formula 1</a></li>
			            <li><a href="">Cricket</a></li>
		            </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<ul class="list1">
					    <li><a href="">Tennis</a></li>
			            <li><a href="">American Football</a></li>
		            </ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"> </div>
		</div> -->
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