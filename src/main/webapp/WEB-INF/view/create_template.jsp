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

<!-- jquery Ruler -->
<script src="<%=path %>/resources/js/jquery-ruler.js" type="text/javascript" ></script>
<link href="<%=path %>/resources/css/jquery-ruler.css" rel="stylesheet" type="text/css" media="screen">
<!-- jquery Ruler -->

<!--------------- popup & modal ------------>
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
</script>
<!--------------- add header --------------->
<script> 
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
</script>
<!--------------- add layer ---------------->
<script>
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
</script>
<!---------------add text ------------------>
<script>
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
</script>
<!--------------- add image ---------------->
<script>
function addImage(){
		var items = document.getElementsByName("imagecheck");
		var arrays = new Array();   //创建一个数组对象
		for(i=0; i < items.length; i++){  //循环这组数据
			   if(items[i].checked){      //判断是否选中
				   arrays.push(items[i].id);  //把符合条件的 添加到数组中. push()是javascript数组中的方法.
			   }
		}
		
		for(i=0; i < arrays.length; i++){
			
			var j = arrays[i]-1;
		    var div = document.createElement("div");
			div.setAttribute("class","a");
			div.setAttribute("id", j+"image");
			var image = document.createElement("img");
			image.src="<%=path %>/resources/images/gallery/"+ items[j].value;
			var myDiv = document.getElementById('infographic');
			myDiv.appendChild(div); 
	 		div.appendChild(image);
	 		
 	 		var x=document.getElementById('itemtable').insertRow(0)
		    var y=x.insertCell(0)
		    y.innerHTML= items[j].value + "<i class='fa fa-times rfloat' onclick='$(this).closest(&quot;tr&quot;).remove(); $(&quot;#"+ j +"image&quot;).remove();  return false; '></i>" 
		}
		$(".a").draggable();
		$(".a").resizable(); 
		$(".ui.modal").modal('hide');
}

</script> 
<!--------------- add ruler ---------------->
<script>
 $(function() {
    $('.infographic_border').ruler();
    var x = $("#infographic").width();
    var y = $("#infographic").height();
    $(".ef-ruler").width(x);
    $(".ef-ruler").height(y);
});
</script>
<!--------------- search image ------------->
<script>
function search(){
	$("#imagebox img").hide();
	$("#imagebox input").hide();
	$.ajax({
  		   type: "POST",
  		   url:'<%=path %>/searchgallery.action',
  		   data: "port=web&search="+$("#search_word").val(),
  		   success: function(data){
  			   if (data.SUCCESS) {		   

  				   var length = data.data.length;
  				   for(var i = 0; i < length; i++){
  					 var myDiv = document.getElementById('imagebox');
  					 var input = document.createElement("input");
  					 	input.id = data.data[i].id;
	  					input.setAttribute("type","checkbox");
	  					input.setAttribute("name","imagecheck");
	  				    input.setAttribute("value",data.data[i].name);
	  				    input.setAttribute("class","padding10");
  					 	myDiv.appendChild(input); 
  					 
  					 var image = document.createElement("img");
  					 image.src="<%=path %>/resources/images/gallery/"+data.data[i].name;
  					 image.setAttribute("class","imageboard");
  					 myDiv.appendChild(image); 
  				   } 
  				   
 				} else {
 					alert("There is no image in the gallery.");
 				}
  		   } 
  		});
}
</script>
<!--------------- get gallery -------------->
<script>
$(function(){
	$.ajax({
		type: "POST",
		url:'<%=path %>/getgallery.action',
	    data: "port=web",
	    success: function(data){
	    if (data.SUCCESS) {		   
																  				   
		var length = data.data.length;
																  				   
		for(var i = 0; i < length; i++){
			var myDiv = document.getElementById('imagebox');
			var input = document.createElement("input");
			input.id = data.data[i].id;	
			input.setAttribute("type","checkbox");
			input.setAttribute("name","imagecheck");
		    input.setAttribute("value",data.data[i].name);
		    input.setAttribute("class","padding10");  
		    myDiv.appendChild(input); 
																	  					 
			var image = document.createElement("img");
			image.src="<%=path %>/resources/images/gallery/"+data.data[i].name;
			image.setAttribute("class","imageboard");
			myDiv.appendChild(image); 
		    } 
		} else {
				alert("There is no image in the gallery.");
			}
	    } 
	});
});
</script>
</head>
<!---------------- body -------------------->

<body style="height:100%;">

<div id="wrapper">
<!----------------------header begin----------------------->	
	<jsp:include page="/WEB-INF/view/header.jsp">
	   <jsp:param name="path" value="<%=path %>"/>
	</jsp:include>
<!----------------------body end----------------------->


<!----------------------container begin----------------------->	
	<div class="container" style="width:780px;">

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
							    	$(".ef-ruler").width(x);
							    	$("#infographic").width(x);
							    }
							    function info_height(){
							    	if(document.getElementById("height").value > 540){ 
							    		document.getElementById("height").value = 540;
							    		alert("Max width equals to 540 px.")
							    	}
							    	var x = document.getElementById("height").value;
							    	$(".ef-ruler").height(x);
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
								    		<div id = "big_div" class="ui modal" style="height:600px;">
											  	<div class="header" style="text-align:center;">
											  	    <h3>Choose image from Gallery</h3>
												  	<input id = search_word>
													<button onclick="search();" style="height:34px;" class="ui teal basic button">search</button>
											  	</div>
												<div id="imagebox" class="image" style="margin:20px">	
												</div>
												<div style="width:20%;margin:0px auto 30px;"><button class="ui teal basic button" id = "add" onclick="addImage();">add</button></div>
											</div>
								    	<button class="ui teal basic button" style="margin-top: 10px;width:100%;">Upload Image</button>
								    	<button class="ui teal basic button" style="margin-top: 10px;width:100%;" onclick="Geometries();">Add Geometries</button>
								    	<button class="ui teal basic button" style="margin-top: 10px;width:100%;" onclick="layer();">Add layer</button>
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