<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<jsp:useBean id="dto" class="member.MemberDTO"/>
<%
//-- 업로드용 변수 선언(폴더명)
	 String upDir = application.getRealPath("/member/storage");
	 String tempDir = application.getRealPath("/member/temp");
	 
// 	 upDir = application.getRealPath(upDir); // c:나 d: 경로까지 뽑아낼수있음
// 	 tempDir = application.getRealPath(tempDir); // c:나 d: 경로까지 뽑아낼수있음

	// UploadSave upload = new UploadSave(request,-1,-1,tempDir);
	UploadSave upload = (UploadSave)request.getAttribute("upload");

	//form의 값을 받는다.
	dto.setId(UploadSave.encode(upload.getParameter("id")));
	dto.setMname(UploadSave.encode(upload.getParameter("mname")));
	dto.setAddress1(UploadSave.encode(upload.getParameter("address1")));
	dto.setAddress2(UploadSave.encode(upload.getParameter("address2")));

	dto.setPasswd(upload.getParameter("passwd"));
	dto.setTel(upload.getParameter("tel"));
	dto.setEmail(upload.getParameter("email"));
	dto.setZipcode(upload.getParameter("zipcode"));
	dto.setJob(upload.getParameter("job"));
	
	//form의 선택한 파일 받기
	FileItem fileItem = upload.getFileItem("fname");
	
	int size = (int)fileItem.getSize();
	String fname = null;
	if(size>0){
		fname = UploadSave.saveFile(fileItem,upDir);
	}else{
		fname ="member.jpg";
	}
  
	
	
	dto.setFname(fname);
	boolean flag = dao.create(dto);

%> 
 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<script type="text/javascript">



</script>
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
 
<DIV class="title">회원가입 처리</DIV>
<div class='content'>
<%
if(flag){
	out.print("회원가입을 했습니다.");
}else{
	out.print("회원가입을 실패했습니다");
}
%>
</div>
 
<%if(flag){ %> 
  <DIV class='bottom'>
    <input type='button' value='로그인' onclick="location.href='loginForm.jsp'">
    <input type='button' value='홈' onclick="location.href='../index.jsp'">   
  </DIV>
  <%}else{ %>
    <DIV class='bottom'>
    <input type='button' value='다시시도' onclick="history.                                     back()">
    <input type='button' value='홈' onclick="location.href='../index.jsp'">   
  </DIV>
  <%} %>
</FORM>
 
 
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html> 