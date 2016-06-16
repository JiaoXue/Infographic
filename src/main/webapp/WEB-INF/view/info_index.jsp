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

<script type="text/javascript" src="<%=path %>/resources/homecss/js/jquery-1.11.1.min.js"></script>
<script src="<%=path %>/resources/homecss/js/menu_jquery.js"></script>
<script type="application/x-javascript"> 
	addEventListener("load", function() { 
		setTimeout(hideURLbar, 0); }, false); 
	function hideURLbar(){ window.scrollTo(0,1);
	} 
</script>


</head>
<div class="header">	
  	     <div class="logo" style="padding: 10px;">
			<h1>Infographic</h1>
		 </div>
		 <div class="top_right">
		   <ul style="color:black;">
		    <li><img src="<%=path %>/resources/images/head/h_1.jpg" style="height:45px;" alt=""/></li>
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
	<div class="banner">
		<div class="container">
			<div class="span_1_of_1">
			    <div class="search">
			      <ul class="nav1">
		            <li id="search">
						<form action="" method="get">
							<input type="text" name="search_text" id="search_text" placeholder="Search"/>
							<input type="button" name="search_button" id="search_button">
						</form>
					</li>
					<li id="options">
						<a href="#">All</a>
						<ul class="subnav">
							<li><a href="#">Images</a></li>
							<li><a href="#">Templates</a></li>
							<li><a href="#">prototypes</a></li>
						</ul>
					</li>
	              </ul>
	            </div>
			</div>
		</div>
	</div>
	<div class="grid_1">
		<div class="col-md-2 col_1">
			<h4>Football</h4>
		</div>
		<div class="col-md-2 col_1">
			<a href="<%=path %>/football_1.do"><img src="<%=path %>/resources/images/templates/football2.jpg" class="img-responsive" alt=""/></a>
		</div>
		<div class="col-md-2 col_1">
			<img src="<%=path %>/resources/images/templates/football2.jpg" class="img-responsive" alt=""/>
		</div>
		<div class="col-md-2 col_1">
			<img src="<%=path %>/resources/images/templates/football2.jpg" class="img-responsive" alt=""/>		</div>
		<div class="col-md-2 col_1">
			<img src="<%=path %>/resources/images/templates/football2.jpg" class="img-responsive" alt=""/>		</div>
		<div class="col-md-2 col_1">
			<img src="<%=path %>/resources/images/templates/football2.jpg" class="img-responsive" alt=""/>		</div>
		<div class="col-md-2 col_1">
			<h4>people</h4>
		</div>
		<div class="col-md-2 col_1">
			<img src="<%=path %>/resources/images/templates/people.png" class="img-responsive" alt=""/>		</div>
		<div class="col-md-2 col_1">
			<img src="<%=path %>/resources/images/templates/people.png" class="img-responsive" alt=""/>		</div>
		<div class="col-md-2 col_1">
			<img src="<%=path %>/resources/images/templates/people.png" class="img-responsive" alt=""/>		</div>
		<div class="col-md-2 col_1">
			<img src="<%=path %>/resources/images/templates/people.png" class="img-responsive" alt=""/>		</div>
		<div class="col-md-2 col_1">
			<img src="<%=path %>/resources/images/templates/people.png" class="img-responsive" alt=""/>		</div>
		<div class="col-md-2 col_1">
			<h4>New Templates</h4>
		</div>
		<div class="col-md-2 col_1">
			<img src="<%=path %>/resources/images/templates/NewTemplate.jpg" class="img-responsive" alt=""/>		</div>
		<div class="col-md-2 col_1">
			<img src="<%=path %>/resources/images/templates/NewTemplate.jpg" class="img-responsive" alt=""/>		</div>
		<div class="col-md-2 col_1">
			<img src="<%=path %>/resources/images/templates/NewTemplate.jpg" class="img-responsive" alt=""/>		</div>
		<div class="col-md-2 col_1">
			<img src="<%=path %>/resources/images/templates/NewTemplate.jpg" class="img-responsive" alt=""/>		</div>
		<div class="col-md-2 col_1">
			<img src="<%=path %>/resources/images/templates/NewTemplate.jpg" class="img-responsive" alt=""/>		</div>
		<div class="clearfix"> </div>
	</div>
    
	<div class="grid_2">
		<div class="container"> 
			<div class="col-md-3 col_2">
				<h3>Searching<br>Keywords</h3>
			</div>
			<div class="col-md-9 col_5">
				<div class="col_1_of_5 span_1_of_5">
					<ul class="list1">
					    <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
		            </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<ul class="list1">
					    <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
		            </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<ul class="list1">
					    <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
		            </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<ul class="list1">
					    <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
			            <li><a href="">Infographic</a></li>
		            </ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="grid_3">
	  <div class="container">
	  	 <ul id="footer-links">
			<li><a href=" ">Support</a></li>
			<li><a href=" ">About Us</a></li>
			<li><a href=" ">FAQ</a></li>
         </ul>
         <p>Copyright &copy; 2016</p>
	  </div>
	</div>
</body>
</html>