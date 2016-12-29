<%@ page contentType="text/html; charset=UTF-8"%>

<%
	String root = request.getContextPath();
%>

<html>
<head>
<style type="text/css">
ul#menu li {
	display: inline;
}

ul#menu li a {
	background-color: black;
	color: white;
	pading: 10px 20px;
	text-decoration: none;
	border-radius: 4px 4px 0 0;
}

ul#menu li a:hover {
	background-color: orange;
}
.table{
	width:100%;
}
.table, .td{
	border-style: none;
}
.img{
	width: 100%;
	height: 100%;
}
</style>
</head>
<body>
	<!-- 상단 메뉴 -->
	<div style="background-color: #EEEEEE;">
		<table class="table">
			<tr>
				<td class="td"><img class="img" src="<%=root%>/menu/images/26.jpg" width='100%'
					height='100%'></td>
			</tr>

			<tr>
				<td class="td">
					<ul id="menu">
						<li><a href="<%=root%>/index.jsp">홈</a></li>
<%-- 						<li><a href="<%=root%>/member/agreement.jsp">회원가입</a></li> --%>
<%-- 						<li><a href="<%=root%>/member/loginForm.jsp">게시판 등록</a></li> --%>
<%-- 						<li><a href="<%=root%>/member/list.jsp">회원 목록</a></li> --%>
<%-- 						<li><a href="<%=root%>/member/read,jsp">나의 정보</a></li> --%>
						<li><a href="<%=root%>/member/list">팀목록</a></li>
<%-- 						<li><a href="<%=root%>/member/">팀생성</a></li> --%>
<%-- 						<li><a href="<%=root%>/member/">주소목록</a></li> --%>
<%-- 						<li><a href="<%=root%>/member/">주소생성</a></li> --%>
<!-- 					</ul> -->
<!-- 					<ul> -->
<%-- 						<li><a href="<%=root%>/member/">회원가입 </a></li> --%>
<%-- 						<li><a href="<%=root%>/member/">로그인</a></li> --%>
<%-- 						<li><a href="<%=root%>/member/">아이디/패스워드 찾기</a></li> --%>
<!-- 					</ul> -->
				</td>
			</tr>

		</table>
	</div>
	<!-- 상단 메뉴 끝 -->



	<!-- 내용 시작 -->
	<div style="width: 100%; padding-top: 10px;">