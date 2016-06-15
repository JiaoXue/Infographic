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
	<meta name="viewport" content="width=device-width, height=device-height,initial-scale=1" />
	<link rel="stylesheet" href="<%=path %>/resources/css/login_register.css" type="text/css" media="screen">
	<link rel="stylesheet" href="<%=path %>/resources/css/button.css" type="text/css" media="screen">
	<link rel="stylesheet" href="<%=path %>/resources/css/font-awesome.min.css"  type="text/css">
	<link rel="stylesheet" href="<%=path %>/resources/css/bootstrap.css"  type="text/css">
    <script type="text/javascript" src="<%=path %>/resources/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="<%=path %>/resources/js/jQuery.md5.js"></script>
    
	<title>Login</title>
	
	<script type="text/javascript">
    	
		    function login(){
		    	var md5pwd = $.md5($("#password").val());
/* 		    	alert(md5pwd); */
 		    	$.ajax({
		  		   type: "POST",
		  		   url:'<%=path %>/login.action',
		  		   data: "port=web&username="+$("#username").val()+"&password="+$.md5($("#password").val()),
 		  		   success: function(data){
		  			   if (data.success) {
		  				  alert("ok!");
// 		  				 if( (location.href).indexOf("console") != -1) 		 					 
// 		 				  {
// 		 					  window.location = "index.action";  
// 		 				  }
// 		 				  else
// 		 				  {
// 		 					 window.location = "console/index.action";  
// 		 				  }
		  				  
		 				} else {
		 					/* window.location = "home.action";   */
//		 					alert("wrong!");
// 		 					window.location = location.href;
		 				}
		  		   } 
		  		});
				}
    </script>
	
	
	
</head>
<body class="body_background" style="min-width: 960px;">

<!-- container -->
    <div id="container">
		<div class="width_48 margin_auto ">	
	    	<div class="margin_20 width_97">
				<div class="margin_auto width_input_2 ">
					<div class="h2" style="color:black;">Login</div>
				</div>
			</div>
		</div>
<!-- 		input -->
	    <div class=" margin_auto  height_width ">	
	    	<div class="margin_20 width_97 background_input" style="border-radius: 25px;">
				<div class="margin_auto width_input ">
					<div class="width_100 margin_auto">
		    			<div class="margin_auto">
		    			
		    			<form name="loginForm" action="<c:url value='/login' />" method="post">
							<table>
								<tr>
									<td></td>
									<td>
										<div style="float:right ! important;">
	    									<a style="color:#BB6A52;float:right;" href="">Sign Up</a>
	    								</div>
	    							</td>
								</tr>
								<tr>
									<td class="input_margin">
										<i class = "fa fa-user"></i></td><td>
										<input id="username" name="username" data-options="required:true,missingMessage:'Username is required.'"  type="text" class="input_style search-query baseline" placeholder="User Name">
									</td>
								</tr>
								<tr>
									<td class="input_margin">
										<i class = "fa fa-key"></i><td>
										<input id="password" name="password" data-options="required:true,missingMessage:'Password is required.'" type="password" class="input_style search-query" placeholder="Password">
									</td>
								</tr>
								<tr>
									<td></td>
									<td class="input_margin" >
										<div style="margin:auto;">
											<a style="color:#BB6A52;float:right;" href="">Forget Password?</a>
										</div>
									</td>
								</tr>
								<tr style="height:70px;">
									<td colspan="2" align="center" valign="middle">
										<a href="#" style="width:80%;" class="Mybutton button-action button-pill" onclick="login();">Log In</a>
									</td>
								</tr>
							</table>
							
						  </form>
						</div>
					</div>
				</div>	
			</div>
    	</div>
    </div> 
</body>
</html>