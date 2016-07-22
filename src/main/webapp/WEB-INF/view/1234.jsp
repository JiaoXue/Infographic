<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html class="insetting">
<head>
  <meta charset="UTF-8">
  <title>Clippy — CSS clip-path maker</title>
  <link rel="stylesheet" type="text/css" href="<%=path %>/resources/clippy/style.min.css">
  <link rel="shortcut icon" href="<%=path %>/resources/clippy/pics/favicon.png" />
  <link rel="apple-touch-icon" sizes="120x120" href="<%=path %>/resources/clippy/pics/apple-touch-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="152x152" href="<%=path %>/resources/clippy/pics/apple-touch-icon-152x152.png">
  <link rel="icon" sizes="196x196" href="<%=path %>/resources/clippy/homescreen-196x196.png">
  <meta name="viewport" content="width=device-width">
</head>

    <div class="main">
      <div class="demo-container fade-content">
        <section class="demo">
          <div id="box" class="box">
            <div class="shadowboard"></div>
            <div class="clipboard"></div>
            <div class="handles"></div>
          </div>
          <div class="custom-notice">
            <div><span class="touchy"></span> to add points <br>to custom polygon.</div>
          </div>
        </section>
      </div>

      <section id="flickity" class="shapes horizontal gallery">
        <ul></ul>
      </section>

      <section class="clip-path" tabindex="-1">
        <div class="css-code code fade-content">
          <!-- <code class="ms block">-ms-clip-path: <span class="functions"></span>;</code> -->
          <code class="webkit block show">-webkit-clip-path: <span class="functions"></span>;</code>
          <code class="unprefixed block show">clip-path: <span class="functions"></span>;</code>
        </div>
      </section>
    </div>

    <div class="side">
     <span class="no-support-message">
        <div class="warning browser-support grid panel fade-content">
          <h1>No support</h1>

          <p>Sorry but the CSS clip-path property does not support basic shapes in <span class="your-browser">your browser</span>. Please try opening this page in another browser.</p>

        </div>

        <a href="http://caniuse.com/#search=clip-path" class="grid panel browser-support fade-content">
          <h2 class="block">Browser Support <small>caniuse.com</small></h2>

          <div class="table">
            <span class="icon chrome" data-version="24+"></span>
            <span class="icon safari" data-version="8+"></span>
            <span class="icon opera" data-version="15+"></span>
            <span class="icon ie unsupported"></span>
            <span class="icon firefox unsupported"></span>
          </div>
        </a>
      </span> 

      <section class="dark-panel custom">
        <h2>Custom shape</h2>
        <button class="finish"></button>
      </section>
      <section class="shapes vertical" tabindex="-1">
        <ul></ul>
      </section>

      <section class="options">
     	<!-- background模块 -->
        <div class="grid panel fade-content">
          <h2>Demo Background</h2>
          <div class="backgrounds">
            <img src="<%=path %>/resources/images/gallery/m1.jpg">
            <img src="<%=path %>/resources/images/gallery/m2.jpg">
          </div>
          <style id="custom_background"></style>
          
          <!-- 是否显示切割以外内容 -->
          <div class="flex shadowboard-toggle">
            <h2>Show outside clip-path</h2>
            <input name="prefix" type="checkbox" id="shadowboard-toggle">
            <label class="joined" for="shadowboard-toggle"></label>
          </div> 
        </div>
      
      </section>
    </div>

<script src="<%=path %>/resources/clippy/jquery.min.js"></script>
<script src="<%=path %>/resources/clippy/draggabilly.min.js"></script>
<script src="<%=path %>/resources/clippy/flickity.pkgd.min.js"></script>
<script src="<%=path %>/resources/clippy/jquery.browser.min.js"></script>
<script src="<%=path %>/resources/clippy/clip.js"></script>

</body>
</html>