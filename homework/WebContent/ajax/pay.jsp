<%@ page contentType="text/html; charset=UTF-8" %> 
<%
String[] titles = {
"  급  여  명  세  서 ", 
"기 본 급: 1,500,000 원",
"야근수당:   100,000 원",
"주말수당:   200,000 원",
"세금합계:   100,000 원",
"실수령액: 1,700,000 원",
"입금 예정일: 2008-01-01일 수고하셨습니다.",
};
 
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
</head> 
<!-- *********************************************** -->
<body>


<!-- *********************************************** -->
 
<DIV class="content">
<ul>

 
<%
String id = request.getParameter("id");
String passwd = request.getParameter("passwd");
 
if (id.equals("test") && passwd.equals("1234")){
    for (int i = 0 ; i < titles.length ; i++) {
        out.println("<li>" + titles[i] + "<br/><br/>");
    }
}else{
    out.println("<li>인증 실패입니다.<br/><br/>");
    out.println("<li>다시 시도해 주세요.<br/><br/>");
}
%>    
</ul>
</DIV>

</body>
<!-- *********************************************** -->
</html>