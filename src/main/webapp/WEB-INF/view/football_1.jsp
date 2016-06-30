<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<title>Football Template</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, height=device-height,initial-scale=1" />
	
	<link rel="stylesheet" href="<%=path %>/resources/css/login_register.css" type="text/css" media="screen">
	<link rel="stylesheet" href="<%=path %>/resources/css/button.css" type="text/css" media="screen">
	<link rel="stylesheet" href="<%=path %>/resources/css/font-awesome.min.css"  type="text/css">
	<link rel="stylesheet" href="<%=path %>/resources/css/bootstrap.css"  type="text/css">
    <link href="<%=path %>/resources/homecss/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="<%=path %>/resources/homecss/css/sideBar.css" rel='stylesheet' type='text/css' />
	<link href="<%=path %>/resources/indexCss/style.css" rel='stylesheet' type='text/css' />

    <script type="text/javascript" src="<%=path %>/resources/js/jquery-1.7.1.min.js"></script>
	<script type="application/x-javascript"> 
		addEventListener("load",function() { setTimeout(hideURLbar, 0); }, false); 
		function hideURLbar(){ window.scrollTo(0,1); } 
	</script>

<script src="<%=path %>/resources/homecss/js/menu_jquery.js"></script>
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
	<div style="padding:30px;">
		
		<div style = "margin:auto;width:90%;">
			<div style="width:80%;margin:auto;padding:20px;"> 
				  URL: <input style = "width:90%;margin:auto;" type="password" name="url">
			</div>
			<table width="100%" style="border-radius:25px;">
<!-- 				<tr style="padding:10psx 30px;border:1px solid black;">
				  <th colspan="2">
				  	
				  </th>
				</tr> -->
				
				<tr style="border: 1px solid;">
				  <td width="25%" style="border: 1px solid;">
				  <!-- <ul id="accordion" class="accordion" style="list-style-type: none;">
						<li>
							<div class="link"><i class="fa fa-paint-brush"></i>Icon Type<i class="fa fa-chevron-down"></i></div>
							<div class="submenu">
								123
							</div>
						</li>
						<li>
							<div class="link"><i class="fa fa-code"></i>Number<i class="fa fa-chevron-down"></i></div>
							<ul class="submenu">
								<li><a href="#">Javascript</a></li>
								<li><a href="#">jQuery</a></li>
								<li><a href="#">Frameworks javascript</a></li>
							</ul>
						</li>
						<li>
							<div class="link"><i class="fa fa-mobile"></i>Background<i class="fa fa-chevron-down"></i></div>
							<ul class="submenu">
								<li><a href="#">Tablets</a></li>
								<li><a href="#">Dispositivos mobiles</a></li>
								<li><a href="#">Medios de escritorio</a></li>
								<li><a href="#">Otros dispositivos</a></li>
							</ul>
						</li>
					</ul> -->		
				  </td>
				  <td height="440px" width="75%"></td>
				</tr>
			</table>
			<div align="center" style = "margin:25px;" ><a href="" style="width:20%; " class="Mybutton button-action button-pill" onclick="">Save</a></div>
		</div>

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