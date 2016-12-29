<%@ page contentType="text/html; charset=UTF-8" %> 
<%    request.setCharacterEncoding("utf-8");
        String root = request.getContextPath();
%> 
 
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
.w3-third img{margin-bottom: -6px; opacity: 0.8; cursor: pointer}
.w3-third img:hover{opacity: 1}
</style>
<body class="w3-light-grey w3-content" style="max-width:1600px">

<!-- Sidenav/menu -->
<nav class="w3-sidenav w3-white w3-animate-left w3-center w3-text-grey w3-collapse w3-top" style="z-index:3;width:300px;font-weight:bold" id="mySidenav"><br>
  <h3 class="w3-padding-64"><b>SOME<br>NAME</b></h3>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-padding w3-hide-large">CLOSE</a>
  <a href="#" onclick="w3_close()" class="w3-padding">PORTFOLIO</a> 
  <a href="#about" onclick="w3_close()" class="w3-padding">ABOUT ME</a> 
  <a href="#contact" onclick="w3_close()" class="w3-padding">CONTACT</a>
</nav>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-white w3-xlarge w3-padding-16">
  <span class="w3-left w3-padding">SOME NAME</span>
  <a href="javascript:void(0)" class="w3-right w3-btn w3-white" onclick="w3_open()">☰</a>
</header>

<!-- Overlay effect when opening sidenav on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">

  <!-- Push down content on small screens --> 
  <div class="w3-hide-large" style="margin-top:83px"></div>
  
  <!-- Photo grid -->
  <div class="w3-row">
    <div class="w3-third">
      <img src="<%=root%>/menu/images/1.jpg" style="width:100%" onclick="onClick(this)" alt="A boy surrounded by beautiful nature">
      <img src="<%=root%>/menu/images/2.jpg" style="width:100%" onclick="onClick(this)" alt="What a beautiful scenery this sunset">
      <img src="<%=root%>/menu/images/3.jpg" style="width:100%" onclick="onClick(this)" alt="The Beach. Me. Alone. Beautiful">
    </div>

    <div class="w3-third">
      <img src="<%=root%>/menu/images/4.jpg" style="width:100%" onclick="onClick(this)" alt="Quiet day at the beach. Cold, but beautiful">
      <img src="<%=root%>/menu/images/5.jpg" style="width:100%" onclick="onClick(this)" alt="Waiting for the bus in the desert">
      <img src="<%=root%>/menu/images/1.jpg" style="width:100%" onclick="onClick(this)" alt="Nature again.. At its finest!">
    </div>
    
    <div class="w3-third">
      <img src="/w3images/girl.jpg" style="width:100%" onclick="onClick(this)" alt="Canoeing again">
      <img src="/w3images/girl_train.jpg" style="width:100%" onclick="onClick(this)" alt="A girl, and a train passing">
      <img src="/w3images/closegirl.jpg" style="width:100%" onclick="onClick(this)" alt="What a beautiful day!">
    </div>
  </div>

  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <ul class="w3-pagination">
      <li><a class="w3-black" href="#">1</a></li>
      <li><a class="w3-hover-black" href="#">2</a></li>
      <li><a class="w3-hover-black" href="#">3</a></li>
      <li><a class="w3-hover-black" href="#">4</a></li>
      <li><a class="w3-hover-black" href="#">»</a></li>
    </ul>
  </div>