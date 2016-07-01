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
	<link href="<%=path %>/resources/homecss/css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="<%=path %>/resources/indexCss/style.css" rel='stylesheet' type='text/css' />
	<link href="<%=path %>/resources/css/button.css" rel="stylesheet" type="text/css" media="screen">

    <script type="text/javascript" src="<%=path %>/resources/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="<%=path %>/resources/js/jquery.easyui.min.js"></script>
	<script type="application/x-javascript"> 
		addEventListener("load",function() { setTimeout(hideURLbar, 0); }, false); 
		function hideURLbar(){ window.scrollTo(0,1); } 
	</script>

<script src="<%=path %>/resources/homecss/js/menu_jquery.js"></script>
</head>



<body style="height:100%;">
<div id="wrapper">
<!----------------------header begin----------------------->

	<jsp:include page="/WEB-INF/view/header.jsp">
	   <jsp:param name="path" value="<%=path %>"/>
	</jsp:include>
<!----------------------body end----------------------->

<!----------------------container begin----------------------->	
	<div class="container">
		<div style="padding:30px;">
			
			<div style = "margin:auto;width:90%;">
				<div style="width:80%;margin:auto;padding:20px;"> 
					  URL: <input style = "width:90%;margin:auto;" type="url" name="url">
				</div>
						
				<div style="border-radius:25px;border: 1px solid rgba(92, 92, 92, 0.43);">
					<table width="100%">
							<tr>
							  <td width="25%">
								
							  </td>
							  <td height="440px" width="75%"></td>
							</tr>
						</table>
				</div>
				
				<div align="center" style = "margin:25px;" ><a href="" style="width:30%;"  class="button button-action button-pill button-large" onclick="">Save</a></div>
			</div>
	
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