<%@ page contentType="text/html; charset=UTF-8" %> 
<%

String root = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<style type="text/css">
#myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}

/* Caption of Modal Image */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Add Animation */
.modal-content, #caption {    
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)} 
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
}

/* The Close Button */
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    .modal-content {
        width: 100%;
    }
}
/* 000000000000000000*/


</style> 

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<body>
<jsp:include page="/menu/top.jsp"/>

<div id="myModal" class="modal">
  <span class="close">&times;</span>
  <img class="modal-content" id="img01">
  <div id="caption">
  </div>
</div>


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
      <img id="myImg" src="<%=root%>/menu/images/11.jpg" style="width:100%"  onclick="onClick(this)"  >
      <img id="myImg" src="<%=root%>/menu/images/2.jpg" style="width:100%"  onclick="onClick(this)"  >
      <img id="myImg" src="<%=root%>/menu/images/13.jpg" style="width:100%"  onclick="onClick(this)"  >
    </div>

    <div class="w3-third">
      <img id="myImg" src="<%=root%>/menu/images/14.jpg" style="width:100%" onclick="onClick(this)" >
      <img id="myImg" src="<%=root%>/menu/images/15.jpg" style="width:100%" onclick="onClick(this)" alt="">
      <img id="myImg" src="<%=root%>/menu/images/17.jpg" style="width:100%" onclick="onClick(this)" alt="">
    </div>
    
    <div class="w3-third">
      <img id="myImg" src="<%=root%>/menu/images/10.png" style="width:100%" onclick="onClick(this)" alt="">
      <img id="myImg" src="<%=root%>/menu/images/18.jpg" style="width:100%" onclick="onClick(this)" alt="">
      <img id="myImg" src="<%=root%>/menu/images/19.jpg" style="width:100%" onclick="onClick(this)" alt="">
    </div>
  </div>
  </div>
  
  <script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById('myImg');
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
    modal.style.display = "block";
    modalImg.src = this.src;
    captionText.innerHTML = this.alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
    modal.style.display = "none";
}
</script>
  
<jsp:include page="/menu/bottom.jsp"/>
</body>
</html>

