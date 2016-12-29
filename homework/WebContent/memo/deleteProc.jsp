<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<jsp:useBean id="dto" class="memo.MemoDTO" />


<%request.setCharacterEncoding("utf-8");%>

<%  int memono = Integer.parseInt(request.getParameter("memono"));
String col = request.getParameter("col");
String word = request.getParameter("word");
String nowPage = request.getParameter("nowPage");


	dto.setMemono(memono);
	
	boolean flag = mdao.delete(memono);


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
div{
	text-align: center;
	margin-top: 100px;

}
</style> 
<script type="text/javascript">
function blist(){
	var url = "list.jsp";
	url += "?col=<%=col%>";
	url += "&word=<%=word%>";
	url += "&nowPage=<%=nowPage%>";
	location.href=url;
}
</script>
</head> 
<body>
<jsp:include page="/menu/top.jsp"/>
<div>
<% 
	if(flag){
		out.print("메모를 삭제했습니다.");
	}else{
		out.print("메모삭제를 실패 했습니다.");
	}
%>
<br>
<input type="button" value="목록" onclick="blist()">
</div> 
<jsp:include page="/menu/bottom.jsp"/>
</body> 
</html> 
