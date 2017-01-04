<%@ page contentType="text/html; charset=UTF-8" %>  
<%
request.setCharacterEncoding("UTF-8");
String island = request.getParameter("island");
System.out.print(island);

out.print(island+" 입니다.");
%>
 