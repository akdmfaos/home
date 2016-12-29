<%@ page contentType="text/html; charset=UTF-8" %> 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Insert title here</title> 
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 20px; 
} 
</style> 
<link href='../css/style.css' rel='Stylesheet' type='text/css'>
</head> 
<body topmargin="0" leftmargin="0"> 
<div class="title">글 등록</div> 
 
<DIV class='content'>
 
  <form name='frmData'  
      action='./createProc_Test.jsp'   
      method='post'  					
      enctype="multipart/form-data"> 
    제목: <input type='text' name='title' size='60'><br></br> 
    내용: <textarea name="content" rows='15' cols="60"></textarea><br></br>  
    참고: <input type='text' name='etc' size='60'><br></br> 
    파일: <input type="file" name="filename"><br><br>
    <input type='submit' value='등록'></input> 
  </form> 
    <!--파일 업로드 할때 form에서   method="post", enctype=multipart/form-data 필요 -->
    <!--파일 업로드 할때 server에서 lib  beans() / beans()는 회사마다 다름. 필요 -->
    <!--beans() 보내는 파일을 받을 수 있다. 문자열 파라메터 값도 받을 수 있다. -->
</DIV>

</body> 
</html> 
 