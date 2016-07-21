<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div class="header" style="z-index:100;">	
  	     <div class="logo" style="padding: 15px;align:center;">
			<a href="<%=path %>/home.do>" ><h1 style="float:left;">Infographic</h1></a>
		 </div>
		 <div class="top_right" style="margin-right:10px;">
		   <ul style="color:black;">
		    <li><div style="float:left;padding: 15px;"><h5 style="margin:0;">Welcome <%= (String)session.getAttribute("usersname") %></h5></div><img src="<%=path %>/resources/images/head/<%= (String)session.getAttribute("usersid") %>.jpg" style="height:45px;border-radius:100px;" alt=""/></li>
			<!-- <li><a href="">Sign Out</a></li>|
		    <li class="login" >
				 <div id="loginContainer"><a href="#" id="loginButton"><span>Account</span></a>
					  <div id="loginBox">                
						  <form id="loginForm">
			                <fieldset id="body">
			                	<fieldset>
			                          <label for="Username">Username</label>
			                          <input type="text" name="Username" id="Username">
			                    </fieldset>
			                    <fieldset>
			                            <label for="password">Password</label>
			                            <input type="password" name="password" id="password">
			                     </fieldset>
			                    <input type="submit" id="save" value="Save">
			            	</fieldset>
						   </form>
				        </div>
			      </div>
			  </li> -->
		   </ul>
	     </div>
		 <div class="clearfix"></div>
	</div>