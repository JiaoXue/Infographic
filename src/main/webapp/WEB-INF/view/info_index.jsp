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

<jsp:include page="include.jsp" >
	<jsp:param name="path" value="<%=path %>"/>
</jsp:include>

<script>
function QueryString(){
	var name,value,i;
	var str=location.href;//获得浏览器地址栏URL串
	var num=str.indexOf("?")
	str=str.substr(num+1);//截取“?”后面的参数串
	var arrtmp=str.split("&");//将各参数分离形成参数数组
	for(i=0;i < arrtmp.length;i++){
		num=arrtmp[i].indexOf("=");
		if(num>0){
		name=arrtmp[i].substring(0,num);//取得参数名称
		value=arrtmp[i].substr(num+1);//取得参数值
		this[name]=value;//定义对象属性并初始化
		}
	}
}
var Request=new QueryString();//使用new运算符创建参数对象实例
</script>
<script>
var url = Request["url"]
alert(url);
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
				<div class="content"><!-- start content -->
					<h5>Infographic Templates</h5>
					<h6 style="margin:30px auto;">Choose a Template to create your infographic.</h6>
					
					<div style="width:100%;align:center;">	
						<div style="width:30%;" class="ui action input">
						  <input type="text" placeholder="Search for infographics">
						  <button class="ui icon button">
						    <i class="fa fa-search"></i>
						  </button>
						</div>
					</div>
					
					<ul class="hover_pack right">
						<li>
							 <a href="" class="b_btn"><span > <h4>Football</h4></span> </a>
						</li>				 
						<li>
							<a href="">
						    <img src="<%=path %>/resources/images/templates/football/football_1.png" class="img-responsive border-radius" alt=""/></a>
						</li>		
						<li>
							<a href="<%=path %>/football_1" >
				            <img src="<%=path %>/resources/images/templates/football/football_6.jpg" class="img-responsive border-radius" alt=""/></a>
						</li>	
						<div class="clear"></div>	
					</ul>
					<ul class="hover_pack left">
						<li>
							 <a href="" class="b_btn"><span > <h4>Text</h4></span> </a>
						</li>
						<li>
							<a href="">
				            <img src="<%=path %>/resources/images/templates/football/football_3.jpeg" class="img-responsive border-radius" alt=""/></a>
						</li>				
						<li>
							<a href="">
				            <img src="<%=path %>/resources/images/templates/football/football_4.png" class="img-responsive border-radius" alt=""/></a>
						</li>	
							
						<div class="clear"></div>																																						
					</ul>
					<ul class="hover_pack left right">
						<li>
							 <a href="" class="b_btn"><span > <h4>New In</h4></span> </a>
						</li>		
						<li>
							<a href="" >
				            <img src="<%=path %>/resources/images/templates/football/football_5.jpeg" class="img-responsive border-radius" alt=""/></a>
						</li>				
						<li>
							<a href="">
				            <img src="<%=path %>/resources/images/templates/football/football_2.jpeg" class="img-responsive border-radius" alt=""/></a>
						</li>
						<div class="clear"></div>																																						
					</ul>
					<ul class="hover_pack left">
						<li>
							 <a href="" class="b_btn"><span > <h4>Euros</h4></span> </a>
						</li>
						<li>
							<a href="" >
				            <img src="<%=path %>/resources/images/templates/people.png" class="img-responsive border-radius" alt=""/></a>
						</li>	
							
						<li>
							<a href="">
				            <img src="<%=path %>/resources/images/templates/NewTemplate.jpg" class="img-responsive border-radius" alt=""/></a>
						</li>	
						<div class="clear"></div>																																						
					</ul>
					<div class="clear"></div>	
				</div>
	</div>
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