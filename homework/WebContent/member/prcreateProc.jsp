<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<%   

//-- 업로드용 변수 선언(폴더명)
	 String upDir = application.getRealPath("/member/storage");
	 String tempDir = application.getRealPath("/member/temp");
	 
//	 upDir = application.getRealPath(upDir); // c:나 d: 경로까지 뽑아낼수있음
//	 tempDir = application.getRealPath(tempDir); // c:나 d: 경로까지 뽑아낼수있음

	 UploadSave upload = new UploadSave(request,-1,-1,tempDir);
	
	
	//form의 값을 받는다.
	String id = UploadSave.encode(upload.getParameter("id"));
	String email = upload.getParameter("email");
	String str ="";
	if(dao.duplicateId(id)){
		str="아이디중복 확인을 해주세요.";
	}else if(dao.duplicateEmail(email)){
		str="이메일중복 확인을 해주세요";
	}else{
		//createProc.jsp 이동
		request.setAttribute("upload", upload); // "이름" 업로드 , 저장할 값 업로드 (해쉬코드)
	%>	
		<jsp:forward page="/member/createProc.jsp"/>
	<%
	
		return;
	}
	%>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 20px; 
} 
</style> 
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">
</head> 
<!-- *********************************************** -->
<body>
<jsp:include page="/menu/top.jsp" flush="false"/>
<!-- *********************************************** -->
 
<DIV class="title">아이디 및 이메일 중복확인</DIV>
 
<div class="content">
<%=

str 

%>

</div>
 
 
  
  <DIV class='bottom'>
    <input type='submit' value='다시시도' onclick="history.back()">
    <input type='button' value='' onclick="location.href=''">
  </DIV>

 
 
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html> 