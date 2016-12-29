<%@ page contentType="text/html; charset=UTF-8" %> 
<%    request.setCharacterEncoding("utf-8");
        String root = request.getContextPath();
        
    	String id = (String)session.getAttribute("id");
    	String grade = (String)session.getAttribute("grade");
%> 
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>

<script>

// Script to open and close sidenav

function w3_open() {
    document.getElementById("mySidenav").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidenav").style.display = "none";
}
</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-sidenav a {padding:20px}

</style>
<body>

<!-- Sidenav (hidden by default) -->
<nav class="w3-sidenav w3-card-2 w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:15%;min-width:300px" id="mySidenav">
  <a href="javascript:void(0)" onclick="w3_close()"
  class="w3-closenav">Close Menu</a>
	<tr>
				<td class="td">
					<ul id="menu">
						<li><a href="<%=root%>/index.jsp">홈</a></li>
						<%if(id==null){ %>
						<li><a href="<%=root%>/member/agreement.jsp">회원가입</a></li>
						<li><a href="<%=root%>/member/loginForm.jsp">로그인</a></li>
						<%}else if(id != null && grade.equals("H")){ %>
					    <li><a href="<%=root%>/member/read.jsp">나의 정보</a></li>
						<li><a href="<%=root%>/member/updateForm.jsp">회원 수정</a></li>
						<li><a href="<%=root%>/member/deleteForm.jsp">회원탈퇴</a></li>
						<li><a href="<%=root%>/member/logout.jsp">로그아웃</a></li>
						<%} %>
						<li><a href="<%=root%>/bbs/list.jsp">게시판 목록</a></li>
						<li><a href="<%=root%>/bbs/createForm.jsp">게시판 생성</a></li>
						<li><a href="<%=root%>/memo/list.jsp">메모 목록</a></li>
						<li><a href="<%=root%>/memo/createForm.jsp">메모 생성</a></li>
						<li><a href="<%=root%>/teamimage/list.jsp">팀 이미지 목록</a></li>
						<li><a href="<%=root%>/teamimage/createForm.jsp">팀 이미지 생성</a></li>
					   	<%if(id!=null && grade.equals("A")){ %>
   					  	<li id="admin"><a href="<%=root %>/member/logout.jsp">로그아웃</a></li>
   					  	<li id="admin"><a href="<%=root %>/admin/list.jsp">회원목록</a></li>
    					<%} %>
					</ul>
				</td>
			</tr>

</nav>

<!-- Top menu -->
<div class="w3-top">
  <div class="w3-white w3-xlarge w3-padding-xlarge" style="max-width:1800px;margin:auto">
    <div class="w3-opennav w3-left w3-hover-text-grey" onclick="w3_open()">☰</div>
   
    <div class="w3-right">Mail</div>
    <div class="w3-center">쉼터</div>
  </div>
</div>
  
  <br><br>
  
  

 
 
<!-- *********************************************** -->

</body>
<!-- *********************************************** -->
</html> 