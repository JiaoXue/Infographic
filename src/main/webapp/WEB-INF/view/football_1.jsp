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
	<link href="<%=path %>/resources/css/amazeui.css" rel='stylesheet' type='text/css' />
	<link href="<%=path %>/resources/indexCss/style.css" rel='stylesheet' type='text/css' />
	<link href="<%=path %>/resources/css/button.css" rel="stylesheet" type="text/css" media="screen">

    <script type="text/javascript" src="<%=path %>/resources/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="<%=path %>/resources/js/amazeui.js"></script>
    <script type="text/javascript" src="<%=path %>/resources/js/jquery.pin.js"></script>
	<script type="application/x-javascript"> 
		addEventListener("load",function() { setTimeout(hideURLbar, 0); }, false); 
		function hideURLbar(){ window.scrollTo(0,1); } 
	</script>
	<script>
		$("#toolbox").pin({
			containerSelector: ".container"
		})
	</script>




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
			<div style="width:60%;margin:auto;padding:20px;"> 
				URL: <input style = "width:90%;margin:auto;" type="url" name="url">
			</div>
			<!-- 按钮触发器， 需要指定 target -->
			<div style="float:left;width:10%;">
				<button id = "toolbox"  style=" margin:10px 0px;" class="button_size button button-action button-pill button-large" data-am-offcanvas="{target: '#doc-oc-demo2', effect: 'push'}">Toolbox</button>
				<button id = "save"  style=" margin:10px 0px;" class="button_size button button-action button-pill button-large">save</button>				
			</div>
			
			
			<div style = "margin:auto;width:90%;">
				
				
				<div class = "info_box">
					<img src="<%=path %>/resources/images/gallery/1.jpg" style="width:100%;"> 
				</div>
				
				
				
				
				
				<!-- 侧边栏内容 -->
				<div id="doc-oc-demo2" class="am-offcanvas">
				  <div class="am-offcanvas-bar">
				    <div class="am-offcanvas-content">
				      <p>
				        我不愿让你一个人 <br/>
				        承受这世界的残忍 <br/>
				        我不愿眼泪陪你到 永恒
				      </p>
				    </div>
				  </div>
				</div>
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