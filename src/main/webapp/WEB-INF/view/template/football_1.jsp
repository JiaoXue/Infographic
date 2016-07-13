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
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    
    
	<script type="application/x-javascript"> 
		
		$(document).ready(function(){
			
			$("#tool").hide();
			$("#save").hide();
			$("#apply").hide();
			$(".hidehide").hide();
		});
		
		$(function() {
		    $( ".margin_icheckimg1" ).draggable();
		 });
	</script>
	
	<script>
	
	    function toolbox() {
			  $("#tool").show();
			  $("#save").show();
			  $("#apply").show();
			  $("#toolbox").hide();	  
		} 
	    
	    function save() {
			  $("#tool").hide();
			  $("#save").hide();
			  $("#apply").hide();
			  $("#toolbox").show();
		} 
	    function apply() {
	    	
	    	var icon = "football1";
	    	
	    	var football1 = document.getElementById("football1"); 
	    	var football = document.getElementById("football"); 
	    	var user = document.getElementById("user"); 
	    	var user1 = document.getElementById("user1"); 
	    	var basketball = document.getElementById("basketball"); 
	    	var basketball1 = document.getElementById("basketball1"); 
	    	var afootball = document.getElementById("afootball"); 
	    	var afootball1 = document.getElementById("afootball1"); 
			var n5 =document.getElementById("n5"); 
			var n6 =document.getElementById("n6"); 
			var n11 =document.getElementById("n11"); 
	    	
	    	if(football1.checked){
	    		icon = "football1";
	    	}
	    	else if(football.checked){
	    		icon = "football";
	    	}
	    	else if(user.checked){
	    		icon = "user";
	    	}
	    	else if(user1.checked){
	    		icon = "user1";
	    	}
	    	else if(afootball1.checked){
	    		icon = "afootball1";
	    	}
	    	else if(afootball.checked){
	    		icon = "afootball";
	    	}
	    	else if(basketball.checked){
	    		icon = "basketball";
	    	}
	    	else{
	    		icon = "basketball1";
	    	}
	    	$(".margin_icheckimg1").attr("src", "<%=path %>/resources/images/icon/"+icon+".ico");
	    	$(".hidehide").hide();
	    	if(n5.checked){
	    		$("#ball5").show();
	    		}
	    	if(n6.checked){
	    		$("#ball6").show();
	    		}
	    	if(n11.checked){
	    		$("#ball11").show();
	    		}			  
		} 

	    function changeB(){
	    	
	    	var background = "1";
	    	var b2 = document.getElementById("2"); 
	    	var b6 = document.getElementById("6"); 
	    	var b1 = document.getElementById("1"); 
	    	var b9 = document.getElementById("9"); 
 
	    	if(b1.checked){
	    		background = "1";
	    	}
	    	else if(b2.checked){
	    		background = "2";
	    	}
	    	else if(b6.checked){
	    		background = "6";
	    	}
	    	else if(b9.checked){
	    		background = "9";
	    	}
	    	$("#info_back").attr("src", "<%=path %>/resources/images/gallery/"+background+".jpg");
	    	
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
			<div style="float:left;width:20%;">
				<button id ="toolbox" onclick="toolbox();" style=" margin:10px 0px;" class="button_1 button button-action button-pill" >Toolbox</button>			
				<button id = "save"   onclick="save();" style=" margin:10px 0px;" class="button_1 button button-action button-pill ">save</button>

<!-- ------------------------------------------------------------------------------->
<!-- --------------------------------Toolbox begin---------------------------------->
<!-- ------------------------------------------------------------------------------->				
				
				<div id="tool" border="solid black 1px;">
 				    	    <ul class="accordion" data-role="accordion">
						        <li>
						            <a href="#"> Type </a>
						            <div>
						            	<input id="football1" class="margin_icheck" type="radio" name="iCheck" checked><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/football1.ico" >
										<input id="football" class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/football.ico" >
						            	<input id="afootball" class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/afootball.ico" ><br/>
										<input id="afootball1" class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/afootball1.ico" >
										<input id="user" class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/user.ico" >
										<input id="user1" class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/user1.ico" ><br/>
										<input id="basketball" class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/basketball.ico" >
										<input id="basketball1" class="margin_icheck" type="radio" name="iCheck" ><img class="margin_icheckimg" src="<%=path %>/resources/images/icon/basketball1.ico" >           
						            </div>
						        </li>
						        <br/>
						        <li>
						            <a href="#"> Number </a>
						            <div>
						            	<input id="n5" type="radio" name="iCheck2"> 5
						            	<input id="n6" type="radio" name="iCheck2"> 6
										<input id="n11" type="radio" name="iCheck2" checked> 11
						            </div>
						        </li>
						    </ul>
						    <br/>
						    <ul class="accordion" data-role="accordion">
						    	<li>
						            <button id = "gallery" class="button_1 button button-action button-pill" data-toggle="modal" data-target="#myModal">Choose from Gallery</button>
						        </li>
						        <li>
						            <button id = "upload" class="button_1 button button-action button-pill">Upload an image</button>				
						        </li>
						        <li>
						        	<button id = "apply"   onclick="apply();" style=" margin:10px 0px;" class="button_1 button button-action button-pill">apply</button>
						        </li>
						        
						    </ul>
				</div>
<!-- ------------------------------------------------------------------------------->
<!-- --------------------------------Toolbox End------------------------------------>
<!-- ------------------------------------------------------------------------------->	
				
			</div>
			
			
			<div style = "margin:auto;width:80%;float:right;">
				
<!-- ------------------------------------------------------------------------------->
<!-- --------------------------------Modal begin------------------------------------>
<!-- ------------------------------------------------------------------------------->	
									
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
												<input id="1" class="margin_icheck" type="radio" name="checkb" checked><img src="<%=path %>/resources/images/gallery/1.jpg" class="img_gallery">		
												<input id="2" class="margin_icheck" type="radio" name="checkb" checked><img src="<%=path %>/resources/images/gallery/2.jpg" class="img_gallery">
												<br/>
												<input id="6" class="margin_icheck" type="radio" name="checkb" ><img  src="<%=path %>/resources/images/gallery/6.jpg" class="img_gallery">
												<br/>
												<input id="9" class="margin_icheck" type="radio" name="checkb" ><img  src="<%=path %>/resources/images/gallery/9.jpg" class="img_gallery">
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
									        <button onclick="changeB();" type="button" class="button button-action button-pill" data-dismiss="modal">Choose</button>
									      </div>
									    </div>
									  </div>
									</div>
<!-- ------------------------------------------------------------------------------->
<!-- --------------------------------Modal End-------------------------------------->
<!-- ------------------------------------------------------------------------------->	
				
				
<!-- ------------------------------------------------------------------------------->
<!-- --------------------------------infographic box begin-------------------------->
<!-- ------------------------------------------------------------------------------->	
				
				<div id="info_box" class = "info_box">
					<img id="info_back" src="<%=path %>/resources/images/gallery/1.jpg" style="width:100%;">
					<div id="ball11" class="hidehide">
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
					</div>
					
					<div id="ball5" class="hidehide">
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
					</div>
					
					<div id="ball6" class="hidehide">
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
						<img class="margin_icheckimg1" src="<%=path %>/resources/images/icon/football1.ico" >
					</div>
				</div>


				
<!-- ------------------------------------------------------------------------------->
<!-- --------------------------------infographic box End---------------------------->
<!-- ------------------------------------------------------------------------------->			
			</div>	
		</div>		
	</div>

	
	
	<div id='push'></div>
</div>
<!----------------------container end----------------------->	

<!----------------------footer begin----------------------->	

<%-- 	<jsp:include page="/WEB-INF/view/footer.jsp">
	   <jsp:param name="path" value="<%=path %>"/>
	</jsp:include>
 --%>
<!----------------------footer end----------------------->			
</body>
</html>