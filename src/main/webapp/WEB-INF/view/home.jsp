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
<link href="<%=path %>/resources/css/button.css" rel="stylesheet" type="text/css" media="screen">

<script type="text/javascript" src="<%=path %>/resources/homecss/js/jquery-1.11.1.min.js"></script>
<script src="<%=path %>/resources/homecss/js/menu_jquery.js"></script>

<%-- <script type="text/javascript"> 
$(document).ready(function(){
	$.ajax({
		   type: "POST",
		   url:'<%=path %>/GetUserInfo.action',
		   data: "web",
		   success: function(data){
			   if (data.success) {
				} else {
	 			  alert(data.msg);
	 			  
				}
		   } 
		});
	});
</script> --%>

<script>
function noContent(){
	alert("Under Construction,Coming Soon");
}
</script>

</head>

<!----------------------body----------------------->

<body style="height:100%;">

<div id="wrapper">
<!----------------------header begin----------------------->	
	<jsp:include page="/WEB-INF/view/header.jsp">
	   <jsp:param name="path" value="<%=path %>"/>
	</jsp:include>
<!----------------------body end----------------------->

<!----------------------container begin----------------------->	
	<div class="container">
		<div class = "welcome" align="center">
			Welcome to Infographic
		</div>
		<div style="margin: 50px auto;" align="center">
			<a href="#" style="margin:15px 15px;" class=" button button-action button-pill button-large" onclick="noContent();">Create a Template</a>
			<a href="<%=path %>/info_index.do" class=" button button-action button-pill button-large">Create an Infographic</a>
		</div>
		<div style="width:100%; margin:auto;" align="center">		
			<img src="<%=path %>/resources/indexCss/back.jpg" alt=""/>
		</div>
	</div>
	<div id='push'></div>
</div>
<!----------------------container end----------------------->	

<!----------------------footer begin----------------------->	
	<jsp:include page="/WEB-INF/view/footer.jsp">
	   <jsp:param name="path" value="<%=path %>"/>
	</jsp:include>

<!----------------------footer end----------------------->			
</body>
</html>