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

<!-- add Text -->
<script src="<%=path %>/resources/addText/dist/js/wangEditor.js" type="text/javascript" ></script>
<link href="<%=path %>/resources/addText/dist/css/wangEditor.css" rel="stylesheet" type="text/css" media="screen">
<!-- add Text -->

<!-- add chart -->
<script src="<%=path %>/resources/chart/echarts.js" type="text/javascript" ></script>
<script src="<%=path %>/resources/chart/theme/dark.js" type="text/javascript" ></script>
<script src="<%=path %>/resources/chart/theme/infographic.js" type="text/javascript" ></script>
<script src="<%=path %>/resources/chart/theme/macarons.js" type="text/javascript" ></script>
<script src="<%=path %>/resources/chart/theme/roma.js" type="text/javascript" ></script>
<script src="<%=path %>/resources/chart/theme/shine.js" type="text/javascript" ></script>
<script src="<%=path %>/resources/chart/theme/vintage.js" type="text/javascript" ></script>	
<!-- add chart -->

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
	$('#big_div')
	  .modal('show')
	;
}
function Geometries(){
	$("#geo")
	  .modal('show')
	;
}
</script>
<!--------------- add gradient ------------->
 <script>
	var layer = 1;
	$(function() {
        $('#begincolor').colorpicker();
        $('#endcolor').colorpicker();
        $('.tag.example .ui.dropdown')
        .dropdown({
          allowAdditions: true
        })
      ;
    });
	
	function addLayer(){
		$("#addLayerModal")
		  .modal('show')
		;		
	}
	
	function Layer(){
		
		var form_o = $("#formOption").val();
		var height = $("#infographic").height();
		var width = $("#infographic").width();
		
		if(form_o == 0 ){
			var div = document.createElement("div"); 
			div.setAttribute("style","background:linear-gradient(to bottom,"+$("#bcolor").val()+","+$("#ecolor").val()+"); width:"+width+"px; height:"+height+"px;");
			var myDiv = document.getElementById('infographic'); 
		    myDiv.appendChild(div);
		}
		else if(form_o == 1 ){
			var div = document.createElement("div"); 
			div.setAttribute("style", "background:linear-gradient(to right,"+$("#bcolor").val()+","+$("#ecolor").val()+");");
			var myDiv = document.getElementById('infographic'); 
		    myDiv.appendChild(div);
		}
		else if(form_o == 2 ){
			var div = document.createElement("div"); 
			div.setAttribute("style", "background:linear-gradient(to bottom right,"+$("#bcolor").val()+","+$("#ecolor").val()+");");
			var myDiv = document.getElementById('infographic'); 
		    myDiv.appendChild(div);
		}
		else if(form_o == 3 ){
			var div = document.createElement("div"); 
			div.setAttribute("style", "background:linear-gradient(to top right,"+$("#bcolor").val()+","+$("#ecolor").val()+");");
			var myDiv = document.getElementById('infographic'); 
		    myDiv.appendChild(div);
		}
		else if(form_o == 4 ){
			var div = document.createElement("div"); 
			div.setAttribute("style", "background:radial-gradient(circle,"+$("#bcolor").val()+","+$("#ecolor").val()+");");
			var myDiv = document.getElementById('infographic'); 
		    myDiv.appendChild(div);
		}
		div.setAttribute("class", "d");
		div.setAttribute("id","Gradient" + layer);
		var x=document.getElementById('itemtable').insertRow(0)
	    var y=x.insertCell(0)
	    y.innerHTML="Gradient" + layer + "<i class='fa fa-times rfloat' onclick='$(this).closest(&quot;tr&quot;).remove();$(&quot;#Gradient"+layer+"&quot;).remove(); return false;'></i>"
	    layer ++;
	    
	    $(".d").draggable();
	    $(".d").resizable();
	    $(".ui.modal").modal('hide');
	}
</script>
<!--------------- add text ----------------->
<script>
var TextCount = 0;
function addText(){
	$("#addTextModal").modal('show');		
}
function addT(){
	var x=document.getElementById('itemtable').insertRow(0);
	var y=x.insertCell(0);
	y.innerHTML="Text" + ++TextCount + "<i class='fa fa-times rfloat' onclick='$(this).closest(&quot;tr&quot;).remove(); $(&quot;#Text"+TextCount+"&quot;).remove();return false;'></i>";
	var x = $("#editor").html();
	var div = document.createElement("div");
	div.innerHTML=x;
	div.setAttribute("class","text");
	div.setAttribute("id","Text" + TextCount);
	var myDiv = document.getElementById('infographic');
    myDiv.appendChild(div);
	$(".text").draggable(); 
	$(".text").resizable(); 
	$(".text").attr("contentEditable", "true"); 
	$(".ui.modal").modal('hide');
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
			div.setAttribute("id", arrays[i]+"image");
			div.setAttribute("name", arrays[i]);
			var image = document.createElement("img");
			image.src="<%=path %>/resources/images/gallery/"+ items[j].value;
			image.setAttribute("id",items[j].value);
			image.setAttribute("name",items[j].id);
			image.setAttribute("ondblclick","change(this.name);");
			var myDiv = document.getElementById('infographic');
			myDiv.appendChild(div); 
	 		div.appendChild(image);
	 		
	 		var x=document.getElementById('itemtable').insertRow(0)
		    var y=x.insertCell(0)
		    y.innerHTML= items[j].value + "<i name = '"+ items[j].id +"'class='fa fa-times rfloat' onclick='$(this).closest(&quot;tr&quot;).remove(); $(&quot;#"+ arrays[i] +"image&quot;).remove();  return false; ' ></i>" 
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
<!--------------- open change_image modal -->
<script>
	function change(id){
		$("#changeModal")
		  .modal('show')
		;
		$("#choose").attr("value",id); 
	}
</script>
<!---------- change image & right sidebar -->
<script>
	function changeImage(value){
 			var items = document.getElementsByName("icheck");
			  for(i=0; i < items.length; i++){  //循环这组数据
				   if(items[i].checked){      //判断是否选中
					   break;  //把符合条件的 添加到数组中. push()是javascript数组中的方法.
				   }
			}
 		    $("img[name='"+value+"']").attr("src","<%=path %>/resources/images/gallery/"+ items[i].value);
			$("img[name='"+value+"']").attr("id",items[i].value);
			$("img[name='"+value+"']").attr("name",items[i].id);
		    $("div[name='"+value+"']").attr("id",items[i].id+"image"); 
		    $("div[name='"+value+"']").attr("name",items[i].id); 
		    var x = $("i[name='"+value+"']").closest("tr").remove();
		    var x=document.getElementById('itemtable').insertRow(0);
		    var y=x.insertCell(0);
		    y.innerHTML= items[i].value + "<i name = '"+ items[i].id +"'class='fa fa-times rfloat' onclick='$(this).closest(&quot;tr&quot;).remove(); $(&quot;#"+ items[i].id +"image&quot;).remove();  return false; ' ></i>" 
			$(".ui.modal").modal('hide'); 
	}	
</script>
<!--------------- get change image modal --->
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
				var myDiv = document.getElementById('change_box');
				var input = document.createElement("input");
				input.id = data.data[i].id;	
				input.setAttribute("type","radio");
				input.setAttribute("name","icheck");
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
<!--------------- change box search image -->
<script>
function search_1(){
	$("#change_box img").hide();
	$("#change_box input").hide();
	$.ajax({
  		   type: "POST",
  		   url:'<%=path %>/searchgallery.action',
  		   data: "port=web&search="+$("#search_word_1").val(),
  		   success: function(data){
  			   if (data.SUCCESS) {		   

  				   var length = data.data.length;
  				   for(var i = 0; i < length; i++){
  					 var myDiv = document.getElementById('change_box');
  					 var input = document.createElement("input");
  					 	input.id = data.data[i].id;
	  					input.setAttribute("type","radio");
	  					input.setAttribute("name","icheck");
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
<!--------------- add table ---------------->
<script>
	var tableNum = 1;
	
	function addTable(){
		$("#addTableModal")
		  .modal('show')
		;		
	}
	
	function Table(){
		var tableForm = $("#tableForm").val();
		var tableColor = $("#tableColor").val();
		var column =  $("#column").val();
		var row = $("#row").val();
		
		var table = document.createElement('table'); 
		table.setAttribute("class","ui table "+tableForm+" "+tableColor+"");
		table.setAttribute("style","width:70%;");
		var tbody = document.createElement('tbody');  
		for (var i = 0; i < row; i++) {  
			var tr = document.createElement('tr'); 
			
			for (var j = 0; j < column; j++) { 
				var td = document.createElement('td'); 
				var inner = document.createTextNode("＊");  
		        td.appendChild(inner);
		        tr.appendChild(td);
			}
		    tbody.appendChild(tr);
		}
		table.appendChild(tbody);  
		document.getElementById('infographic').appendChild(table);  
		
		table.setAttribute("id","Table" + tableNum);
		var x=document.getElementById('itemtable').insertRow(0)
	    var y=x.insertCell(0)
	    y.innerHTML="Table" + tableNum + "<i class='fa fa-times rfloat' onclick='$(this).closest(&quot;tr&quot;).remove();$(&quot;#Table"+tableNum+"&quot;).remove(); return false;'></i>"
	    tableNum ++;
		
		$("table").draggable(); 
		$("table").resizable(); 
		$("table").attr("contentEditable", "true"); 
	    
		$(".ui.modal").modal('hide');
	}
</script>
<!--------------- add pie ------------------>	
<script>
var PieNum = 1;
function addPie(){
	$("#addPieModal")
	  .modal('show')
	;		
} 
function PieS(event){
	$("#PieData").empty();
	var pie = 1;
	var y = document.getElementById('PieData');
	var x = $("#series").val();
	for(var i=0;i<x;i++){
	   var div = document.createElement('div');
	   div.setAttribute("class","ui input");
	   div.setAttribute("style","width:100%;margin:5px 5px;");
	   var dataName = document.createElement('input');
	   dataName.setAttribute("id","Legend"+pie);
	   dataName.setAttribute("style","width:10%;margin:0px 5px;");
	   dataName.setAttribute("placeholder","Legend");
	   div.appendChild(dataName); 
	   var input = document.createElement('input');
	   input.setAttribute("id","pie"+pie);
	   input.setAttribute("placeholder", pie+" value");
	   pie++;
	   div.appendChild(input); 
	   y.appendChild(div);
	}
}
function Pie(){
	var width=$("#infographic").width();
    var height=$("#infographic").height();
    var infographic = document.getElementById('infographic');
    var PieChart = document.createElement('div'); 
    var legend ="'"+ $("#Legend1").val()+"'";
	for(var i=2;i<=$("#series").val();i++){
		legend = legend + "," + "'"+$("#Legend"+i).val()+"'";
	}
	var Pievalue = [];
	for(var i=0;i<$("#series").val();i++){
		var j = i+1;
		Pievalue[i] = {"value":$("#pie"+j).val(),"name":$("#Legend"+j).val()}
	}
    PieChart.setAttribute("id","Pie"+PieNum);
    PieChart.setAttribute("class","pie");
    PieChart.setAttribute("style","width:"+width+"px;height:"+height+"px;");
	infographic.appendChild(PieChart); 
	var myChart = echarts.init(PieChart,$("#PieTheme").val());
	var whichpie = $("#WhichPie").val();
	if(whichpie == "Doughnut"){
		var pieRadius = ['50%','70%'];
		var option = {
				 title: {
		                text: $("#PieTitle").val(),
		                x:'center'
		            },
				 toolbox: {
		                feature: {
		                    saveAsImage: {}
		                }
		            },
			    tooltip: {
			        trigger: 'item',
			        formatter: "{a} <br/>{b}: {c} ({d}%)"
			    },
			    legend: {
			        orient: 'vertical',
			        x: 'left',
			        data:legend
			    },
			    series: [
			        {
			            name:$("#PieTitle").val(),
			            type:'pie',
			            radius: pieRadius,
			            avoidLabelOverlap: false,
			            label: {
			                normal: {
			                    show: false,
			                    position: 'center'
			                },
			                emphasis: {
			                    show: true,
			                    textStyle: {
			                        fontSize: '30',
			                        fontWeight: 'bold'
			                    }
			                }
			            },
			            labelLine: {
			                normal: {
			                    show: false
			                }
			            },
			            data: Pievalue
			        }
			    ]
			}; 
	}else{
		var option = {
				 title: {
		                text: $("#PieTitle").val(),
		                x:'center'
		            },
				 toolbox: {
		                feature: {
		                    saveAsImage: {}
		                }
		            },
			    tooltip: {
			        trigger: 'item',
			        formatter: "{a} <br/>{b}: {c} ({d}%)"
			    },
			    legend: {
			        orient: 'vertical',
			        x: 'left',
			        data:legend
			    },
			    series: [
			        {
			            name:$("#PieTitle").val(),
			            type:'pie',
			            data: Pievalue
			        }
			    ]
			}; 
	}
	
	
	myChart.setOption(option);
	var x=document.getElementById('itemtable').insertRow(0)
    var y=x.insertCell(0)
    y.innerHTML="Pie" + PieNum + "<i class='fa fa-times rfloat' onclick='$(this).closest(&quot;tr&quot;).remove();$(&quot;#Pie"+PieNum+"&quot;).remove(); return false;'></i>"
    PieNum ++;
	$("#series").empty();
	$("#PieData").empty();
    $(".pie").draggable();
	$(".ui.modal").modal('hide');
	
}
</script>
<!--------------- add Rose ------------------>	
<script>
var RoseNum = 1;
function addRose(){
	$("#addRoseModal")
	  .modal('show')
	;		
} 
function RoseS(event){
	$("#RoseData").empty();
	var pie = 1;
	var y = document.getElementById('RoseData');
	var x = $("#Roseseries").val();
	for(var i=0;i<x;i++){
	   var div = document.createElement('div');
	   div.setAttribute("class","ui input");
	   div.setAttribute("style","width:100%;margin:5px 5px;");
	   var dataName = document.createElement('input');
	   dataName.setAttribute("id","Legend"+pie);
	   dataName.setAttribute("style","width:10%;margin:0px 5px;");
	   dataName.setAttribute("placeholder","Legend");
	   div.appendChild(dataName); 
	   var input = document.createElement('input');
	   input.setAttribute("id","pie"+pie);
	   input.setAttribute("placeholder", pie+" value");
	   pie++;
	   div.appendChild(input); 
	   y.appendChild(div);
	}
}
function Rose(){

	var width=$("#infographic").width();
    var height=$("#infographic").height();
    var infographic = document.getElementById('infographic');
    var PieChart = document.createElement('div'); 
    var legend ="'"+ $("#Legend1").val()+"'";
	for(var i=2;i<=$("#Roseseries").val();i++){
		legend = legend + "," + "'"+$("#Legend"+i).val()+"'";
	}
	var Pievalue = [];
	for(var i=0;i<$("#Roseseries").val();i++){
		var j = i+1;
		Pievalue[i] = {"value":$("#pie"+j).val(),"name":$("#Legend"+j).val()}
	}
    PieChart.setAttribute("id","Rose"+RoseNum);
    PieChart.setAttribute("class","Rose");
    PieChart.setAttribute("style","width:"+width+"px;height:"+height+"px;");
	infographic.appendChild(PieChart); 
	var myChart = echarts.init(PieChart,$("#RoseTheme").val());
	var option = {
			 title: {
	                text: $("#RoseTitle").val(),
	                x:'center'
	            },
			 toolbox: {
	                feature: {
	                    saveAsImage: {}
	                }
	            },
		    tooltip: {
		        trigger: 'item',
		        formatter: "{a} <br/>{b}: {c} ({d}%)"
		    },
		    legend: {
		        orient: 'vertical',
		        x: 'left',
		        data:legend
		    },
		    calculable : true,
		    series: [
		        {
		            name:$("#RoseTitle").val(),
		            type:'pie',
		            roseType :'area',
		            label: {
		                normal: {
		                    show: false
		                },
		                emphasis: {
		                    show: true
		                }
		            },
		            lableLine: {
		                normal: {
		                    show: false
		                },
		                emphasis: {
		                    show: true
		                }
		            },
		            data: Pievalue
		        }
		    ]
		}; 
	myChart.setOption(option);
	var x=document.getElementById('itemtable').insertRow(0)
    var y=x.insertCell(0)
    y.innerHTML="Rose" + RoseNum + "<i class='fa fa-times rfloat' onclick='$(this).closest(&quot;tr&quot;).remove();$(&quot;#Rose"+ RoseNum +"&quot;).remove(); return false;'></i>"
    RoseNum ++;
    
    $("#RoseData").empty();
    $("#Roseseries").empty();
    $(".Rose").draggable();
	$(".ui.modal").modal('hide');
	
}
</script>
<!---------- save infographic -------------->
<script>
	function saveInfographic(){
		var divContent = $(".stage").html();
		$.ajax({
	  		   type: "POST",
	  		   url:'<%=path %>/saveinfographic.action',
	  		   data: "port=web&code="+divContent,
	  		   success: function(data){
	  			   if (data.SUCCESS) {		   
	  				 alert("success");			   
	 				} else {
	 					alert("Fail");
	 				}
	  		   } 
	  		});	
	}
</script>



</head>
<!---------------- body -------------------->

<body style="height:100%;">

<div id="wrapper">
<!----------------------header begin----------------------->	
	<jsp:include page="/WEB-INF/view/header.jsp">
	   <jsp:param name="path" value="<%=path %>"/>
	</jsp:include>
<!----------------------container begin--------------------->	
	<div class="container" style="width:780px;">
<!----------------------sideBar Begin----------------------->	
		<div class="sidebar">		
			<div class="ui styled accordion">
				  <!----------------------    Resize Workspace   ----------------------->	
				  <div class="title"><i class="dropdown icon"></i> Resize Workspace <i class="fa fa-question" style="float:right;" data-title="Default size : 500x500"></i></div>
				  <div class="content">
					  <div class="accordion">
					      <div class="ui right labeled input uu">
							  <input oninput="info_width();" id="width" class="settinginput" value="700" type="text" placeholder="width(Number)" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')">
							  <div class="ui basic label">px </div>
						  </div>
					      <div class="ui right labeled input uu">
							  <input oninput="info_height();" id="height" class="settinginput" value="540" type="text" placeholder="height(Number)" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')">
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
								    		<!-- choose from gallery box -->		
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
								    	    <!-- change image from gallery box -->
								    	    <div id = "changeModal" class="ui modal" style="height:600px;">
											  	<div class="header" style="text-align:center;">
											  	    <h3>Choose image from Gallery</h3>
												  	<input id = search_word_1>
													<button onclick="search_1();" style="height:34px;" class="ui teal basic button">search</button>
											  	</div>
												<div id="change_box" class="image" style="margin:20px">	
												</div>
												<div style="width:20%;margin:0px auto 30px;"><button class="ui teal basic button" id = "choose" value="#" onclick="changeImage(this.value);">choose</button></div>
											</div>
								    	<button class="ui teal basic button" style="margin-top: 10px;width:100%;">Upload Image</button>
								    	<button class="ui teal basic button" style="margin-top: 10px;width:100%;" onclick="Geometries();">Add Geometries</button>
								    	<button class="ui teal basic button" style="margin-top: 10px;width:100%;" onclick="addLayer();">Add Gradients</button>
											<!-- add Gradients modal -->
											<div id = "addLayerModal" class="ui modal" style="height:300px;width:400px;">
												<div class="header" style="text-align:center;">
													<h3>Add Gradients</h3> 
												</div>
												<div style="text-align:center;padding:15px 10px;">
													<select id = "formOption" name="GradientsForms" class="ui fluid search dropdown" style="width:65%;float:right;">
													  <option value="0">Top to Down</option>
													  <option value="1">Left to Right</option>
													  <option value="2">LeftTop to RightBottom</option>
													  <option value="3">LeftBottom to RightTop</option>
													  <option value="4">Circle</option>
													</select>
													</br><h4>Form:</h4> 	
													<div id="begincolor" class="input-group colorpicker-component" style="width:65%;float:right;">
													    <input id = "bcolor"type="text" value="#00AABB" class="form-control" />
													    <span class="input-group-addon"><i></i></span>
													</div>
													</br><h4>Begin With:</h4> 
													<div id="endcolor" class="input-group colorpicker-component" style="width:65%;float:right;">
													    <input id ="ecolor" type="text" value="#00AABB" class="form-control" />
													    <span class="input-group-addon"><i></i></span>
													</div>
													</br><h4>End With:</h4> 
								
													<div style="width:20%;margin:10px auto 30px;">
														<button class="ui teal basic button" id = "addGradients" onclick="Layer();">Add</button>
													 </div>
												</div>
											</div>
								    </div>
								</div>
						    </div>
					  </div>				
				  <!----------------------    Add Chart   ----------------------->		  
				  <div class="title"><i class="dropdown icon"></i> Add Chart<i class="fa fa-question" style="float:right;" data-title=""></i></div>
				  <div class="content">
					  <div class="accordion">
						  <button class="ui teal basic button" style="margin-top: 10px;width:100%;" onclick="addTable();">Table</button>
						  	  	<!-- add table modal -->
						  	  	<div id = "addTableModal" class="ui modal" style="height:300px;width:400px;">
									<div class="header" style="text-align:center;">
										<h3>Add Table</h3> 
									</div>
									<div style="text-align:center;padding:15px 10px;"> 	
										<select id = "tableForm" name="tableForms" class="ui fluid search dropdown" style="width:65%;float:right;">
											<option value="very basic">Very Basic</option>
											<option value="basic">Basic</option>
											<option value="striped">Striped</option>
											<option value="celled">Celled</option>
										</select>
										</br><h4>Form:</h4> 
										<select id = "tableColor" name="tableColor" class="ui fluid search dropdown" style="width:65%;float:right;">
											<option value="red">red</option>
											<option value="orange">orange</option>
											<option value="yellow">yellow</option>
											<option value="olive">olive</option>
											<option value="green">green</option>
											<option value="teal">teal</option>
											<option value="blue">blue</option>
											<option value="violet">violet</option>
											<option value="purple">purple</option>
											<option value="pink">pink</option>
											<option value="grey">grey</option>
											<option value="black">black</option>
										</select>
										</br><h4>Color:</h4>
										<div class="ui input" style="width:65%;float:right;margin:5px 0px;">
										  <input id = "column" type="text" placeholder="column" >
										</div>
										<div class="ui input" style="width:65%;float:right;margin:5px 0px;">
										  <input id = "row" type="text" placeholder="row">
										</div>
										<div style="margin: 45px 10px;">
											<button class="ui teal basic button" id = "addTable" onclick="Table();">Add</button>
										 </div>
									</div>
								</div>
						  <button class="ui teal basic button" style="margin-top: 10px;width:100%;" onclick="addPie();">Pie chart</button>
						  		<!-- add Pie Chart modal -->
						  		<div id = "addPieModal" class="ui modal" style="height:400px;width:600px;">
									<div class="header" style="text-align:center;">
										<h3>Add Pie Chart</h3> 
									</div>
									<div style="text-align:center;padding:15px 10px;"> 
										<select id = "WhichPie" name="WhichPie" class="ui fluid search dropdown" style="width:80%;float:right;">
											<option value="Pie">Basic Pie Chart</option>
											<option value="Doughnut">Doughnut Pie Chart</option>
										</select>
										</br><h4>Type:</h4> 
										<select id = "PieTheme" name="PieTheme" class="ui fluid search dropdown" style="width:80%;float:right;">
											<option value="">Basic</option>
											<option value="vintage">vintage</option>
											<option value="dark">dark</option>
											<option value="roma">roma</option>
											<option value="shine">shine</option>
											<option value="macarons">macarons</option>
											<option value="infographic">infographic</option>
										</select>
										</br><h4>Theme:</h4> 
										<div class="ui input" style="width:95%;margin:5px 10px;">
											 <input id = "PieTitle" type="text" placeholder="Pie Chart Title" >
										</div>
										<div class="ui input" style="width:95%;margin:5px 10px;">
											 <input id = "series" type="text" placeholder="Number of series" oninput="PieS(event);" >
										</div>
										<div id = "PieData"></div>
									</div>
									<div style="text-align:center;padding:5px 0px;">
										<div style="margin: 45px 10px;">
											<button class="ui teal basic button" id = "addPie" onclick="Pie();">Add</button>
										</div>
									</div>
								</div>
						  <button class="ui teal basic button" style="margin-top: 10px;width:100%;" onclick="addRose();">Nightingale's Rose</button>
						 		<!-- add Rose Chart modal -->
						 		<div id = "addRoseModal" class="ui modal" style="height:400px;width:600px;">
									<div class="header" style="text-align:center;">
										<h3>Add Rose Chart</h3> 
									</div>
									<div style="text-align:center;padding:15px 10px;"> 
										</br><h4>Type:</h4> 
										<select id = "RoseTheme" name="RoseTheme" class="ui fluid search dropdown" style="width:80%;float:right;">
											<option value="">Basic</option>
											<option value="vintage">vintage</option>
											<option value="dark">dark</option>
											<option value="roma">roma</option>
											<option value="shine">shine</option>
											<option value="macarons">macarons</option>
											<option value="infographic">infographic</option>
										</select>
										</br><h4>Theme:</h4> 
										<div class="ui input" style="width:95%;margin:5px 10px;">
											 <input id = "RoseTitle" type="text" placeholder="Rose Chart Title" >
										</div>
										<div class="ui input" style="width:95%;margin:5px 10px;">
											 <input id = "Roseseries" type="text" placeholder="Number of Roseseries" oninput="RoseS(event);" >
										</div>
										<div id = "RoseData"></div>
									</div>
									<div style="text-align:center;padding:5px 0px;">
										<div style="margin: 45px 10px;">
											<button class="ui teal basic button" id = "addPie" onclick="Rose();">Add</button>
										</div>
									</div>
								</div>
						  
					  </div>
				  </div>	  		  					  
			      <!----------------------    Add Text  ----------------------->	
				  <div class="title"><i class="dropdown icon"></i> Add Text<i class="fa fa-question" style="float:right;" data-title=""></i></div>
				  <div class="content" style="height:100px;">
					  <div class="accordion">
					  		<div id = "addTextModal" class="ui modal" style="height:300px;width:400px;">
								<div class="header" style="text-align:center;">
									<!-- <h3>Add Text</h3> -->
									<div id="editor" style="height:180px;"> </div>
								    <script type="text/javascript">
								        $(function () {
								            var editor = new wangEditor('editor');
								            editor.config.menus = [
								                                   /* 'source', */
								                                   'fontfamily',
								                                   'fontsize',  // '|' 是菜单组的分割线
								                                   'bold',
								                                   'underline',
								                                   'italic',
								                                   'strikethrough',
								                                   'eraser',
								                                   'forecolor'
								                                ];
								            editor.create();
								        });
								    </script>
									<div style="width:20%;margin:10px auto 30px;">
										<button class="ui teal basic button" id = "addText" onclick="addT();">Add</button>
									 </div> 
								</div>
							</div>
						    <button class="ui teal basic button" style="margin-top: 10px; width:100%;"onclick="addText();">Add Text</button> 
					  </div>
				  </div>
			</div>
			<button class="ui teal basic button" style="margin-top: 10px;width:100%;" onclick="saveInfographic();">Save</button>
		</div>
<!----------------------Workspace Begin--------------------->
		<div  class="infographic_border" >
			<div id="infographic" class="infographic_space" >			
			</div>
		</div>	
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
	<div id='push'></div>
</div>	
<!----------------------footer begin----------------------->	
<%-- 	<jsp:include page="/WEB-INF/view/footer.jsp">
	   <jsp:param name="path" value="<%=path %>"/>
	</jsp:include> --%>
<!----------------------footer end-------------------------->			
</body>
</html>