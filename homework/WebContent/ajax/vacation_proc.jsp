<%@ page contentType="text/html; charset=UTF-8" %>  
<%
request.setCharacterEncoding("UTF-8");
String season = request.getParameter("season");
System.out.print(season);
if(season.equals("봄")){
	out.print("석모도,무의도,영종도");
}else if(season.equals("여름")){
	out.print("서해,동해,남해");
}else if(season.equals("가을")){
	out.print("강화도,대부도,소래,오이도");
}else if(season.equals("겨울")){
	out.print("제부도,영흥도,선제도,월미도");
}else{
	out.print("다시 입력하세요.");
}
%>
 