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
	<link href="<%=path %>/resources/css/font-awesome.css"  rel="stylesheet" type="text/css">

    <script type="text/javascript" src="<%=path %>/resources/js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="<%=path %>/resources/js/amazeui.js"></script>
    <script type="text/javascript" src="<%=path %>/resources/js/accordion.js"></script>
    <script type="text/javascript" src="<%=path %>/resources/js/jquery.pin.js"></script>
    <script type="text/javascript" src="<%=path %>/resources/js/icheck.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
	<script type="application/x-javascript"> 
		
		$(document).ready(function(){
			$("#tool").hide();
		});
		$(document).ready(function(){
			$("#save").hide();
		});
		</script>
	<script>
		$("#toolbox").pin({
			containerSelector: ".container"
		});
	</script>
	<script>
	    function tshow() {
			  $("#tool").show();
			  $("#save").show();
			  $("#toolbox").hide();
		} 
	    function save() {
			  $("#tool").hide();
			  $("#save").hide();
			  $("#toolbox").show();
		} 
	</script>



</head>



<body style="height:100%;">
<div id="wrapper">
<!----------------------header begin----------------------->

	<jsp:include page="/WEB-INF/view/header.jsp">
	   <jsp:param name="path" value="<%=path %>"/>
	</jsp:include>
<!----------------------header end----------------------->




<!----------------------container begin----------------------->	
	<div class="container">
			
		<div style="padding:30px;">
			<div style="width:60%;margin:auto;padding:20px;"> 
				URL: <input style = "width:90%;margin:auto;" type="url" name="url">
			</div>
			<!-- 按钮触发器， 需要指定 target -->
			<div style="float:left;width:20%;">
				<button id ="toolbox" onclick="tshow();" style=" margin:10px 0px;" class="button_size button button-action button-pill button-large" >Toolbox</button>			
				<button id = "save"   onclick="save();" style=" margin:10px 0px;" class="button_size button button-action button-pill button-large">save</button>
				
				<div id="tool" border="solid black 1px;">
				<!-- <h2 style="TEXT-ALIGN: center;">Player<br/>===========<br/></h2> -->
 				    	    <ul class="accordion" data-role="accordion">
						        <li>
						            <a href="#"> Type </a>
						            <div>
						            	<input class="margin_icheck" type="radio" name="iCheck" checked><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/football1.ico" >
										<input class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/football.ico" >
						            	<input class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/afootball.ico" ><br/>
										<input class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/afootball1.ico" >
										<input class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/user.ico" >
										<input class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/user1.ico" ><br/>
										<input class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/basketball.ico" >
										<input class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/basketball1.ico" >           
						            </div>
						        </li>
						        <br/>
						        <li>
						            <a href="#"> Number </a>
						            <div>
						            	<input type="radio" name="iCheck2"> 5
						            	<input type="radio" name="iCheck2"> 6
										<input type="radio" name="iCheck2" checked> 11
						            </div>
						        </li>
						    </ul>
						    <br/>
<!-- 						    <h2 style="TEXT-ALIGN: center;">Background<br/>===========</h2>
 -->						    <ul class="accordion" data-role="accordion">
						    	<li>
						            <button id = "gallery" class="button_1 button button-action button-pill" data-toggle="modal" data-target="#myModal">Choose from Gallery</button>
						        </li>
						        <li>
						            <button id = "upload" class="button_1 button button-action button-pill">Upload an image</button>				
						        </li>
						    </ul>
				</div>
				
			</div>
<%-- 			<!-- 侧边栏内容 -->
				<div id="doc-oc-demo2" class="am-offcanvas">
				  <div class="am-offcanvas-bar">
				    <div class="am-offcanvas-content">
 				    	    <h2 style="TEXT-ALIGN: center;">Player<br/>===========<br/></h2>
 				    	    <ul class="accordion" data-role="accordion">
						        <li class="active">
						            <a href="#"> Type </a>
						            <div>
						            	<input class="margin_icheck" type="radio" name="iCheck" checked><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/football1.ico" >
										<input class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/football.ico" >
						            	<input class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/afootball.ico" ><br/>
										<input class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/afootball1.ico" >
										<input class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/user.ico" >
										<input class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/user1.ico" ><br/>
										<input class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/basketball.ico" >
										<input class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/basketball1.ico" >           
						            </div>
						        </li>
						        <br/>
						        <li>
						            <a href="#"> Number </a>
						            <div>
						            	<input type="radio" name="iCheck2"> 5
						            	<input type="radio" name="iCheck2"> 6
										<input type="radio" name="iCheck2" checked> 11
						            </div>
						        </li>
						    </ul>
						    <br/>
						    <h2 style="TEXT-ALIGN: center;">Background<br/>===========</h2>
						    <ul class="accordion" data-role="accordion">
						    	<li class="active">
						            <button id = "gallery" class="button_1 button button-action button-pill" data-toggle="modal" data-target="#myModal">Choose from Gallery</button>
						        </li>
						        <li>
						            <button id = "upload" class="button_1 button button-action button-pill">Upload an image</button>				
						        </li>
						    </ul>


				    </div>
				  </div>
				</div> --%>
			
			
			<div style = "margin:auto;width:80%;float:right;">
				
				<!-- Modal -->
									<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
									  <div class="modal-dialog" role="document">
									    <div class="modal-content">
									      <div class="modal-header">
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									        <h4 class="modal-title" id="myModalLabel">Choose from Gallery</h4>
									      </div>
									      <div class="modal-body">
									      		<input type="text" placeholder="Search for infographics">
												<button style="height: 28px;padding:6px;" class="button button-action button-pill"><i class="fa fa-search"></i></button><br/>
												<img src="<%=path %>/resources/images/gallery/2.jpg" class="img_gallery">
												<img src="<%=path %>/resources/images/gallery/4.jpg" class="img_gallery"> 
												<img src="<%=path %>/resources/images/gallery/3.jpg" class="img_gallery"> 
												<%-- <img src="<%=path %>/resources/images/gallery/5.jpg" class="img_gallery"> 
												<img src="<%=path %>/resources/images/gallery/6.jpg" class="img_gallery"> 
												<img src="<%=path %>/resources/images/gallery/7.jpg" class="img_gallery"> 
												<img src="<%=path %>/resources/images/gallery/8.jpg" class="img_gallery">  --%>
									      		<nav>
													  <ul class="pagination">
													    <li class="page-item">
													      <a class="page-link" href="#" aria-label="Previous">
													        <span aria-hidden="true">&laquo;</span>
													        <span class="sr-only">Previous</span>
													      </a>
													    </li>
													    <li class="page-item"><a class="page-link" href="#">1</a></li>
													    <li class="page-item"><a class="page-link" href="#">2</a></li>
													    <li class="page-item"><a class="page-link" href="#">3</a></li>
													    <li class="page-item"><a class="page-link" href="#">4</a></li>
													    <li class="page-item"><a class="page-link" href="#">5</a></li>
													    <li class="page-item">
													      <a class="page-link" href="#" aria-label="Next">
													        <span aria-hidden="true">&raquo;</span>
													        <span class="sr-only">Next</span>
													      </a>
													    </li>
													  </ul>
													</nav>
												
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="button button-action button-pill" data-dismiss="modal">Close</button>
									        <button type="button" class="button button-action button-pill">Save changes</button>
									      </div>
									    </div>
									  </div>
									</div>
						            <!-- Modal End -->
				<div class = "info_box">
					<img src="<%=path %>/resources/images/gallery/1.jpg" style="width:100%;"> 
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