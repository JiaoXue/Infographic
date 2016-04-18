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

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<%=path %>/resources/homecss/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="<%=path %>/resources/homecss/css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<script type="text/javascript" src="<%=path %>/resources/homecss/js/jquery-1.11.1.min.js"></script>
<script src="<%=path %>/resources/homecss/js/menu_jquery.js"></script>

<script>
function allowDrop(ev)
{
ev.preventDefault();
}

function drag(ev)
{
ev.dataTransfer.setData("Text",ev.target.id);
}

function drop(ev)
{
ev.preventDefault();
var data=ev.dataTransfer.getData("Text");
ev.target.appendChild(document.getElementById(data));
}
</script>


</head>
<body>
	<div class="header">	
      <div class="container"> 
  	     <div class="logo" style="padding: 10px;">
			<h1>BBCSport Infographics</h1>
		 </div>
		 <div class="top_right">
		   <ul style="color:black;">
		    <li><img src="<%=path %>/resources/images/templates/football2.jpg" style="height:45px;" alt=""/></li>
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
	</div>
	
	<div style="min-height:400px;">
		<div style ="background:url('/Infographic_Master/resources/images/templates/football1.jpg;');margin: 50px 450px;width: 35%;/* margin: auto; */height: 370px;" id="div2" ondrop="drop(event)" ondragover="allowDrop(event)">
			<!--  <img src="<%=path %>/resources/images/templates/football1.jpg"  alt=""/>-->
		</div>
		<div style = "margin:auto;width: 80%;padding:10px 0px;"id="div1" ondrop="drop(event)" ondragover="allowDrop(event)">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag1" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag2" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag3" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag4" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag5" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag6" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag7" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag8" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag9" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag10" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag11" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag12" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag13" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag14" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag15" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag16" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag17" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag18" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag19" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag20" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag21" width="40" height="40">
  		<img src="<%=path %>/resources/images/templates/football.png" draggable="true" ondragstart="drag(event)" id="drag22" width="40" height="40"></div>
		
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