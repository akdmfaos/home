<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<jsp:useBean id="dto" class="bbs.BbsDTO"/>

<%
	String upDir = "/bbs/storage";
	String temDir = "bbs/temp";
	
	upDir = application.getRealPath(upDir);
	temDir = application.getRealPath(temDir);
	
	UploadSave upload = new UploadSave(request,-1,-1,temDir);

	String word = UploadSave.encode(upload.getParameter("word"));
	String col = upload.getParameter("col");
	String nowPage = upload.getParameter("nowPage");
	String oldfile = UploadSave.encode(upload.getParameter("oldfile"));
	// UploadSave.encode 한글 처리 
	dto.setBbsno(Integer.parseInt(upload.getParameter("bbsno")));
	dto.setWname(UploadSave.encode(upload.getParameter("wname")));
	dto.setTitle(UploadSave.encode(upload.getParameter("title")));
	dto.setContent(UploadSave.encode(upload.getParameter("content")));
	dto.setPasswd(UploadSave.encode(upload.getParameter("passwd")));

	//파일 가져오올때 파일 아이템사용
	FileItem fileItem = upload.getFileItem("filename");
	int filesize = (int) fileItem.getSize(); ;
	String filename = null;
	if(filesize>0){ //새로운 파일을 업로드 했다 .
		UploadSave.deleteFile(upDir, oldfile); // 기존파일을 삭제
		filename = UploadSave.saveFile(fileItem, upDir);
	}
	dto.setFilename(filename);
	dto.setFilesize(filesize);
	//패스워드 검증
	Map map = new HashMap();
	map.put("bbsno", dto.getBbsno());
	map.put("passwd", dto.getPasswd());
	boolean pflag = bdao.passCheck(map);

	//수정처리
	boolean flag = false;
	if (pflag) {
		flag = bdao.update(dto);
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
<script type="text/javascript">
function blist(){
	var url ="list.jsp";
	url += "?col=<%=col%>";
	url += "&word=<%=word%>";
	url += "&nowPage=<%=nowPage%>";
	location.href=url;
}
</script>
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">
</head> 
<!-- *********************************************** -->
<body>
<jsp:include page="/menu/top.jsp" flush="false"/>
<!-- *********************************************** -->
 
<DIV class="title">수정 처리 결과</DIV>
<div class="content">
<%
	if(pflag==false){
		out.print("패스워드가 일치하지 않습니다.");
	}else if(flag){
		out.print("글을 변경했습니다.");
	}else{
		out.print("글변경을 실패했습니다.");
	}
%>
</div>

<%if(pflag==false){%>
	
  <DIV class='bottom'>
    <input type='button' value='다시 시도' onclick="history.back()">
    <input type='button' value='목록' onclick="blist()">
  </DIV>
<%}else{ %>
 <DIV class='bottom'>
    <input type='button' value='다시 등록' onclick="location.href='createForm.jsp'">
    <input type='button' value='목록' onclick="blist()">
  </DIV>
 <%} %>
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html>