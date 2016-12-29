<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/ssi/ssi.jsp" %>

<jsp:useBean id="dto" class="memo.MemoDTO"/>
<jsp:setProperty property="*" name="dto"/>

<%				
 	boolean flag = mdao.create(dto);
 	
%>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 24px; 
} 

</style> 
</head> 
<body> 
<jsp:include page="/menu/top.jsp"/>

<DIV align="center">
<%
if(flag){
out.print("메모를 등록했습니다.");
}else{
out.print("메모등록이 실패했습니다.");
}
%>
<br>
<input type="button" value="계속 등록" 
onclick="location.href='./createForm.jsp'">
<input type="button" value="목록" 
onclick="location.href='./list.jsp'">  
</DIV>
<jsp:include page="/menu/bottom.jsp"/>
</body> 
</html> 
