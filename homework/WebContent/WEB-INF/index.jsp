<%@ page contentType="text/html; charset=UTF-8" %> 
<%

String root = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<style>

.table{
	width:100%;
}
.table, .td{
	border-style: none;
}

</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<body>
<jsp:include page="/menu/top.jsp"/>

<nav class="w3-sidenav w3-card-2 w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:30%;min-width:300px" id="mySidenav">
  <a href="javascript:void(0)" onclick="w3_close()"
  class="w3-closenav">Close Menu</a>
  <a href="#food" onclick="w3_close()">dadad</a>
  <a href="#about" onclick="w3_close()">About</a>
</nav>

<div class="w3-display-container" style="margin-bottom:50px">
  <img src="<%=root%>/menu/images/1.jpg" style="width:100%">
  <div class="w3-display-bottomleft w3-container w3-amber w3-hover-orange w3-hide-small"
   style="bottom:10%;opacity:0.7;width:70%">

</div>
</div>

<div class="w3-row w3-container" style="margin:50px 0">
<div class="w3-half w3-container">
  <div class="w3-topbar w3-border-amber w3-padding-top">
    <img src="<%=root%>/menu/images/2.jpg" style="width:100%">
 
  </div>
</div>

<div class="w3-half w3-container">
  <div class="w3-topbar w3-border-amber w3-padding-top">
    <img src="<%=root%>/menu/images/3.jpg" style="width:100%">

  </div>
</div>
</div>

<div class="w3-row w3-container" style="margin:50px 0">
<div class="w3-half w3-container">
  <div class="w3-topbar w3-border-orange w3-padding-top">
    <img src="<%=root%>/menu/images/4.jpg" style="width:100%">

  </div>
</div>

  <div class="w3-topbar w3-border-orange w3-padding-top">
    <img src="<%=root%>/menu/images/5.jpg" style="width:100%">

    </div>
</div>
</div>

</body>
</html>

