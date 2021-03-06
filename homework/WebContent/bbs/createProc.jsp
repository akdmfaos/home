<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>

<jsp:useBean id="dto" class="bbs.BbsDTO"/> <!-- 객체생성 -->
 <!-- form에서보는 값을 getparameter로 받아와서 dto 를 쓴다 -->
<%
	//-- 업로드용 변수 선언(폴더명)
	String upDir = "/bbs/storage";
	String tempDir = "/bbs/temp";
	//-- 절대경로 생성
	upDir = application.getRealPath(upDir); // c:나 d: 경로까지 뽑아낼수있음
	tempDir = application.getRealPath(tempDir); // c:나 d: 경로까지 뽑아낼수있음
	
	UploadSave upload = new UploadSave(request,-1,-1,tempDir);
	dto.setWname(UploadSave.encode(upload.getParameter("wname")));
	dto.setTitle(UploadSave.encode(upload.getParameter("title")));
	dto.setContent(UploadSave.encode(upload.getParameter("content")));
	dto.setPasswd(UploadSave.encode(upload.getParameter("passwd")));
	
	FileItem fileItem = upload.getFileItem("filename");
	int size = (int)fileItem.getSize();
	String filename = null;
	if(size>0) { 
		filename = 	UploadSave.saveFile(fileItem, upDir);
	}
	dto.setFilesize(size);
	dto.setFilename(filename);
	
	boolean flag = bdao.create(dto);

%>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<script type="text/javascript">
function blist(){
	var url = "list.jsp";
	location.href=url;
}
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
<div class="title">처리결과</div>
<DIV class="content">
<%
	if(flag){
		out.print("게시물이 등록되었습니다.");
	}else{
		out.print("게시물 등록에 실패하였습니다.");
	}

%>
<div class="bottom">
<input type="button" value="계속등록" onclick="location.href='./createForm.jsp'">
<input type="button" value="목록" onclick="blist()">
</div>
</DIV>
 
 
 
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html>