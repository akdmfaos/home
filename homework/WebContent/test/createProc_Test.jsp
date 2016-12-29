<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp"%>

<%


UploadSave upload = new UploadSave(request,-1,-1,tempDir);//-1,-1, 크기 제한을 두지 않겠다.
//폼의 값을 가져옵니다.
String title = UploadSave.encode(upload.getParameter("title")); 
String content = UploadSave.encode(upload.getParameter("content")); 
String etc = UploadSave.encode(upload.getParameter("etc")); 
//폼에서 보내는 파일을 가져온다.
FileItem fileItem = upload.getFileItem("filename");
int size = (int)fileItem.getSize();
String filename = UploadSave.saveFile(fileItem, upDir);
%> 
 <!--  컴포트  사용해서 썻어요 -->
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8" /> 
<title>등록 처리</title> 
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 20px; 
} 
</style> 
<link href='../css/style.css' rel='Stylesheet' type='text/css'>
</head> 
 
<body> 
<DIV CLASS='content'> 
  <% 
  out.println("<br>title: " + title); 
  out.println("<br>content: " + content); 
  out.println("<br>etc: " + etc); 
  out.println("<br>파일명: " + filename); 
  out.println("<br>파일크기: " + size); 
%> 
 
</DIV> 
 
</body> 
</html> 