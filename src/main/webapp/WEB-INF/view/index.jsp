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
	<link rel="stylesheet" href="<%=path %>/resources/css/login_register.css" type="text/css" media="screen">
	<link rel="stylesheet" href="<%=path %>/resources/css/button.css" type="text/css" media="screen">
	<link rel="stylesheet" href="<%=path %>/resources/css/font-awesome.min.css"  type="text/css">
	<link rel="stylesheet" href="<%=path %>/resources/css/bootstrap.css"  type="text/css">
    <script type="text/javascript" src="<%=path %>/resources/js/jquery-1.7.1.min.js"></script>
	<title>Login</title>
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
	    									<a style="color:#BB6A52;float:right;" href="<%=path %>/sign_up_page">Sign Up</a>
	    								</div>
	    							</td>
								</tr>
								<tr>
									<td class="input_margin">
										<img src="<%=path %>/resources/images/signin_signup/icon-user.png"></td><td>
										<input id="username" name="username" data-options="required:true,missingMessage:'Username is required.'"  type="text" class="input_style search-query baseline" placeholder="User Name">
									</td>
								</tr>
								<tr>
									<td class="input_margin">
										<img src="<%=path %>/resources/images/signin_signup/icon-password.png"></td><td>
										<input id="password" name="password" data-options="required:true,missingMessage:'Password is required.'" type="password" class="input_style search-query" placeholder="Password">
									</td>
								</tr>
								<tr>
									<td></td>
									<td class="input_margin" >
										<div style="margin:auto;">
											<a style="color:#BB6A52;float:right;" href="<%=path %>/console/ChangeToLogin.action">Forget Password?</a>
										</div>
									</td>
								</tr>
								<tr style="height:70px;">
									<td colspan="2" align="center" valign="middle">
										<a href="<%=path %>/home.do" style="width:80%;" class="Mybutton button-action button-pill" onclick="">Log In</a>
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