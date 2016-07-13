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
<title>Create Template</title>

<meta name="viewport" content="width=device-width, height=device-height,initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="<%=path %>/resources/homecss/css/bootstrap.css" rel='stylesheet' type='text/css' media="screen"/>
<link href="<%=path %>/resources/indexCss/style.css" rel='stylesheet' type='text/css'  media="screen"/>
<link href="<%=path %>/resources/css/button.css" rel="stylesheet" type="text/css" media="screen">
<link href="<%=path %>/resources/css/semantic.css" rel="stylesheet" type="text/css" media="screen">
<link href="<%=path %>/resources/css/font-awesome.min.css"  type="text/css" rel="stylesheet"  media="screen">

<script src="<%=path %>/resources/js/jquery-1.11.3.js" type="text/javascript" ></script>
<script src="<%=path %>/resources/js/amazeui.js" type="text/javascript" ></script>
<script src="<%=path %>/resources/js/accordion.js" type="text/javascript" ></script>
<script src="<%=path %>/resources/homecss/js/menu_jquery.js" type="text/javascript" ></script> 
<script src="<%=path %>/resources/js/semantic.js" type="text/javascript" ></script> 
<script src="<%=path %>/resources/js/icheck.js" type="text/javascript" ></script>
<%-- <script src="<%=path %>/resources/js/bootstrap-wysiwyg.js" type="text/javascript" ></script> --%>

<!-- resizable & draggable -->
<script src="<%=path %>/resources/js/jquery-ui.js" type="text/javascript" ></script>
<link href="<%=path %>/resources/css/jquery-ui.css" rel="stylesheet" type="text/css"/>
<!-- resizable & draggable -->

<!-- colorpicker -->
<link href="<%=path %>/resources/colorpicker/css/octicons.min.css" rel="stylesheet">
<link href="<%=path %>/resources/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
<link href="<%=path %>/resources/colorpicker/css/main.css" rel="stylesheet"> 
<script src="<%=path %>/resources/colorpicker/js/bootstrap-colorpicker.js"></script>
<!-- colorpicker -->

<script type="text/javascript">

</script>


<script>

$(function() {
	
	$('.ui.accordion').accordion();
	$('.fa-question')
	  .popup({
		  boundary: '.fa-question'
	  })
	;
	
 });

function gallery(){
	$('.ui.modal')
	  .modal('show')
	;
}
function Geometries(){
	$("#geo")
	  .modal('show')
	;
}

 
function addheader(){
	var xy = 1;
	var image = document.createElement("h1");     //创建一个img元素 
    /* image.setAttribute("width", "10%"); */
    image.setAttribute("z-index", "1");
    image.setAttribute("class", "b");
    image.setAttribute("contentEditable", "true");
    
    
    image.innerHTML = "Insert Here"
    var myDiv = document.getElementById('infographic'); //获得dom对象  
    myDiv.appendChild(image); //为dom添加子元素img  
    
    var x=document.getElementById('itemtable').insertRow(0);
    var y=x.insertCell(0)
    y.innerHTML="Header" + xy + "<i class='fa fa-times rfloat' onclick='$(this).closest(&quot;tr&quot;).remove(); return false;'></i>"
    xy= xy+1;
    
    $(".b").draggable();   
}

function layer(){
	var xy = 1;
	var image = document.createElement("div");     //创建一个img元素 
    /* image.setAttribute("width", "10%"); */
    image.setAttribute("z-index", "1");
    image.setAttribute("class", "d");
    var myDiv = document.getElementById('infographic'); //获得dom对象  
    myDiv.appendChild(image); //为dom添加子元素img  
    
    var x=document.getElementById('itemtable').insertRow(0)
    var y=x.insertCell(0)
    y.innerHTML="Layer" + xy + "<i class='fa fa-times rfloat' onclick='$(this).closest(&quot;tr&quot;).remove(); return false;'></i>"
    xy= xy+1;
    
    $(".d").draggable();   
}


function addText(){
	var xy = 1;
	var image = document.createElement("h1");     //创建一个img元素 
    /* image.setAttribute("width", "10%"); */
    image.setAttribute("z-index", "1");
    image.setAttribute("class", "c");
    image.setAttribute("contentEditable", "true");
    
    
    image.innerHTML = "Insert Here"
    var myDiv = document.getElementById('infographic'); //获得dom对象  
    myDiv.appendChild(image); //为dom添加子元素img  
    
    var x=document.getElementById('itemtable').insertRow(0)
    var y=x.insertCell(0)
    y.innerHTML="Text" + xy + "<i class='fa fa-times rfloat' onclick='$(this).closest(&quot;tr&quot;).remove(); return false;'></i>"
    xy= xy+1;
    
    $(".c").draggable();   
}

function addImage(){
		/* var addImage=1; */
		
		if(i1.checked){	
			var div = document.createElement("div");
			div.setAttribute("class","a");
			div.setAttribute("id","m1");
			var image = document.createElement("img");
			image.src="<%=path %>/resources/images/gallery/m1.jpg";
			var myDiv = document.getElementById('infographic');
			myDiv.appendChild(div); 
	 		div.appendChild(image); 

		    var x=document.getElementById('itemtable').insertRow(0)
		    var y=x.insertCell(0)
		    y.innerHTML="Image<i class='fa fa-times rfloat' onclick='$(this).closest(&quot;tr&quot;).remove(); $(&quot;#m1&quot;).remove();  return false; '></i>"
		   /*  addImage= addImage+1; */
		   
		}
		
		$(".a").draggable();
		$(".a").resizable(); 
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

		<!----------------------sideBar Begin----------------------->	
		<div class="sidebar">
		
			<div class="ui styled accordion">
				  <!----------------------    Resize Workspace   ----------------------->	
				  <div class="title"><i class="dropdown icon"></i> Resize Workspace <i class="fa fa-question" style="float:right;" data-title="Default size : 500x500"></i></div>
				  <div class="content">
					  <div class="accordion">
					      <div class="ui right labeled input uu">
							  <input oninput="info_width();" id="width" class="settinginput" value="500" type="text" placeholder="width(Number)" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')">
							  <div class="ui basic label">px </div>
						  </div>
					      <div class="ui right labeled input uu">
							  <input oninput="info_height();" id="height" class="settinginput" value="500" type="text" placeholder="height(Number)" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')">
							  <div class="ui basic label">px </div>
						  </div>
						  <button class="ui teal basic button" style="margin-top: 10px;width:100%;" id="cp4">background color</button>
							<script>
							    $(function() {
							        $('#cp4').colorpicker().on('changeColor', function(e) {
							            $('#infographic')[0].style.backgroundColor = e.color.toHex();
							        });
							    });
							    function info_width(){
							    	if(document.getElementById("width").value > 700){ 
							    		document.getElementById("width").value = 700;
							    		alert("Max width equals to 700 px.")
							    	}
							    	var x = document.getElementById("width").value;
							    	$("#infographic").width(x);
							    }
							    function info_height(){
							    	var x = document.getElementById("height").value;
							    	$("#infographic").height(x);
							    }
							</script>
					  </div>
				  </div>
				  <!----------------------    Add Image   ----------------------->	
				  <div class="active title"><i class="dropdown icon"></i> Add Image<i class="fa fa-question" style="float:right;" data-title=""></i></div>
				  <div class=" active content" style="text-align:left;">
						    <div class="accordion">
								<div class="content" >
								    <div class="accordion">
								    	
								    	<button class="ui teal basic button" style="margin-top: 10px;width:100%;" onclick="gallery();">Choose from Gallery</button>
								    		<div class="ui modal" style="height:400px;">
											  	<div class="header" style="text-align:center;">Choose image from Gallery</div>
												<div class="image">
													<input id="i1"class="padding10"type="checkbox"> <img class="imageboard" src="<%=path %>/resources/images/gallery/m1.jpg">
													<input id="i2"class="padding10"type="checkbox"> <img class="imageboard" src="<%=path %>/resources/images/gallery/m2.jpg">
													<input id="i3"class="padding10"type="checkbox"> <img class="imageboard" src="<%=path %>/resources/images/gallery/m3.jpg">
												    <input id="i4"class="padding10"type="checkbox"> <img class="imageboard" src="<%=path %>/resources/images/gallery/m4.jpg">
													<input id="i5"class="padding10"type="checkbox"> <img class="imageboard" src="<%=path %>/resources/images/gallery/m5.jpg">
													<input id="i6"class="padding10"type="checkbox"> <img class="imageboard" src="<%=path %>/resources/images/gallery/m6.jpg">
													<input id="i7"class="padding10"type="checkbox"> <img class="imageboard" src="<%=path %>/resources/images/gallery/m7.jpg">
													<input id="i8"class="padding10"type="checkbox"> <img class="imageboard" src="<%=path %>/resources/images/gallery/m8.jpg">
													<input id="i9"class="padding10"type="checkbox"> <img class="imageboard" src="<%=path %>/resources/images/gallery/m9.jpg">
													<input id="i10"class="padding10"type="checkbox"> <img class="imageboard" src="<%=path %>/resources/images/gallery/m10.jpg">
												
												</div>
												<div style="width:20%;margin:auto;"><button class="ui teal basic button" id = "add" onclick="addImage();">add</button></div>
											</div>
								    	
						    	
								    	<button class="ui teal basic button" style="margin-top: 10px;width:100%;">Upload Image</button>
								    	<button class="ui teal basic button" style="margin-top: 10px;width:100%;" onclick="Geometries();">Add Geometries</button>
								    	<button class="ui teal basic button" style="margin-top: 10px;width:100%;" onclick="layer();">Add layer</button>
								    		<!-- <div class="ui modal" id = "geo" style="height:400px;">
											  	<div class="header" style="text-align:center;">Add Geometries</div>
												<div class="image">
													
													
												
												</div>
												<div style="width:20%;margin:auto;"><button class="ui teal basic button" id = "add" onclick="add();">add</button></div>
											</div> -->
								    	
										<!-- <div class="title"><i class="dropdown icon"></i> Level 2A-A </div>
								        <div class="content">Level 2A-A Contents </div>
								        <div class="title"><i class="dropdown icon"></i> Level 2A-B </div>
								        <div class="content">Level 2A-B Contents </div> -->
								    </div>
								</div>
						    </div>
					  </div>					  
				  <!----------------------    Add Text  ----------------------->	
				  <div class="title"><i class="dropdown icon"></i> Add Text<i class="fa fa-question" style="float:right;" data-title=""></i></div>
					  <div class="content">
						  <div class="accordion">
						      
							  <button class="ui teal basic button" style="margin-top: 10px; width:100%;" onclick="addheader();">Add Header</button>
							  <button class="ui teal basic button" style="margin-top: 10px; width:100%;"onclick="addText();">Add Text</button>
						  </div>
					  </div>
					  				
				  <!----------------------    Add Chart   ----------------------->		  
				  <div class="title"><i class="dropdown icon"></i> Add Chart<i class="fa fa-question" style="float:right;" data-title=""></i></div>
					  <div class="content">
						  <div class="accordion">
						      
							  <button class="ui teal basic button" style="margin-top: 10px;width:100%;" onclick="setWH();">Apply</button>
						  </div>
					  </div>	  
					  					  
			</div>
		</div>
		<!----------------------sideBar End----------------------->	
		<!----------------------Workspace Begin--------------------->
		<div  class="infographic_border" >
			<div id="infographic" class="infographic_space" >
				
			
			
			</div>
		</div>
		<!----------------------Workspace End----------------------->	
		
		
	</div>
	
	<!----------------------Right sideBar Begin----------------------->	
	<div class="sidebar2">
		<div id="rightbar" class="ui styled accordion" style="padding: 0.75em 1em;">
			<table id = "itemtable" class="ui teal table" >
			  <tbody>

			  </tbody>
			</table>
		</div>
	</div>
	<!----------------------Right sideBar End----------------------->	
	
	
	
	<div id='push'></div>
</div>
<!----------------------container end----------------------->	

<!----------------------footer begin----------------------->	
<%-- 	<jsp:include page="/WEB-INF/view/footer.jsp">
	   <jsp:param name="path" value="<%=path %>"/>
	</jsp:include> --%>

<!----------------------footer end----------------------->			
</body>
</html>