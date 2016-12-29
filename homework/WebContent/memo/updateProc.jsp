<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<jsp:useBean id="dto" class="memo.MemoDTO"/>

<jsp:setProperty property="*" name="dto"/>

<% 


	boolean flag = mdao.update(dto);
	
%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<script type="text/javascript">
function mlist(){
	var url = "list.jsp";
	url += "?col=<%=request.getParameter("col")%>";
	url += "&word=<%=request.getParameter("word")%>";
	url += "&nowPage=<%=request.getParameter("nowPage")%>";
	location.href=url;
}
</script>
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 24px; 
} 
div{
text-align: center; 
   margin-top: 20px; 
   margin-bottom: 20px;
}
</style> 
</head> 
<body> 
<jsp:include page="/menu/top.jsp"/>
<div>
<%
	if(flag){
		out.print("메모를 수정하였습니다.");
	}else{
		out.print("메모수정을 실패 했습니다.");
	}
%>
<br>
<input type="button" value="목록" onclick="mlist()">
</div>
<jsp:include page="/menu/bottom.jsp"/>
</body> 
</html> 