<%@ page contentType="text/html; charset=UTF-8" %> 
<%

String root = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<style type="text/css">

.table{
	width:100%;
}
.table, .td{
	border-style: none;
}

*{ 
  font-family: gulim; 
  font-size: 20px; 
} 
</style> 

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<body>
<jsp:include page="/menu/top.jsp"/>



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
      <img src="<%=root%>/menu/images/11.jpg" style="width:100%"  onclick="onClick(this)" alt="A boy surrounded by beautiful nature">
      <img src="<%=root%>/menu/images/2.jpg" style="width:100%" onclick="onClick(this)" alt="What a beautiful scenery this sunset">
      <img src="<%=root%>/menu/images/13.jpg" style="width:100%" onclick="onClick(this)" alt="The Beach. Me. Alone. Beautiful">
    </div>

    <div class="w3-third">
      <img src="<%=root%>/menu/images/14.jpg" style="width:100%" onclick="onClick(this)" alt="Quiet day at the beach. Cold, but beautiful">
      <img src="<%=root%>/menu/images/15.jpg" style="width:100%" onclick="onClick(this)" alt="Waiting for the bus in the desert">
      <img src="<%=root%>/menu/images/17.jpg" style="width:100%" onclick="onClick(this)" alt="Nature again.. At its finest!">
    </div>
    
    <div class="w3-third">
      <img src="<%=root%>/menu/images/10.png" style="width:100%" onclick="onClick(this)" alt="Canoeing again">
      <img src="<%=root%>/menu/images/18.jpg" style="width:100%" onclick="onClick(this)" alt="A girl, and a train passing">
      <img src="<%=root%>/menu/images/19.jpg" style="width:100%" onclick="onClick(this)" alt="What a beautiful day!">
    </div>
  </div>
<jsp:include page="/menu/bottom.jsp"/>
</body>
</html>

