<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<%
	//검색관련-----------------------
	String col = Utility.checkNull(request.getParameter("col"));
	String word = Utility.checkNull(request.getParameter("word"));
	
	if(col.equals("total")){
		word = "";
	}
	//---- 페이지 관련-----------
	int nowPage = 1; //현재 보고있는 페이지
	if(request.getParameter("nowPage")!=null){
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	int recordPerPage = 5;// 한페이지당 보여줄 레코드 갯수
	
	//DB에서 가져올 순번--------------------
	int sno = ((nowPage-1)*recordPerPage)+1;
	int eno = nowPage * recordPerPage;
	
	Map map = new HashMap();
	map.put("col", col);
	map.put("word", word);
	map.put("sno",sno);
	map.put("eno",eno);
	
	
	int total = bdao.total(col,word);
	List<BbsDTO> list = bdao.list(map);
	Iterator<BbsDTO> iter = list.iterator();
%>
 
<!DOCTYPE html> 
<html> 
<head> 
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title></title> 
 
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 20px; 
} 
.search{
	width: 80%;
	text-align:center;
	margin: 1px auto;
}
</style>
<script type="text/javascript">
function read(bbsno){
	var url="read.jsp";
	url += "?bbsno="+bbsno;
	url += "&col=<%=col%>";
	url += "&word=<%=word%>";
	url += "&nowPage=<%=nowPage%>";
	location.href=url;
	
}
</script> 
<%-- <link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css"> --%>
</head> 
<!-- *********************************************** -->
<body>
<jsp:include page="/menu/top.jsp" flush="false"/>
<!-- *********************************************** -->
<div class="container">
<h2><span class="glyphicon glyphicon-th-list"> </span>게시판 목록</h2>
 
<div class="search">
<form method="post" action="./list.jsp">
<select name="col"><!-- 검색할 컬럼 -->

<option value="wname"
<%if(col.equals("wname")) out.print("selected='selected'"); %>
>성명</option>
<option value="title"
<%if(col.equals("title")) out.print("selected='selected'"); %>
>제목</option>
<option value="content"
<%if(col.equals("content")) out.print("selected='selected'"); %>
>내용</option>

<option value="total">전체출력</option>
</select>

<input type="text" name="word" value="<%=word%>"> <!-- 검색어 -->
<input type="submit" value="검색">
<input type="button" value="등록" onclick="location.href='./createForm.jsp'">

</form>
</div>


  <TABLE class="table table-hover">
    <TR>
      <TH>번호</TH>
      <TH>제목</TH>
      <TH>성명</TH>
      <TH>조회수</TH>
      <TH>등록일</TH>
      <TH>파일명</TH>

    </TR>
<% if(list.size()==0){ %> 
	<tr>
		<td colspan="5">등록된 글이 없습니다.</td>
	</tr>
<%	}else{
		while(iter.hasNext()){
			BbsDTO dto = iter.next();	
	%>   
    <tr>
    	<td><%=dto.getBbsno() %></td>
    	<td>
<%
	for(int i=0;i<dto.getIndent();i++){
		out.print("&nbsp;&nbsp;");
	}
	if(dto.getIndent()>0){%>  
	<img src="./images/2.jpg"; width="30px"; height="30px"> 
	<%} %>
    	<a href="javascript:read('<%=dto.getBbsno() %>')">
    	<%=dto.getTitle() %>
    	</a>
    	<%if(Utility.compareDay(dto.getWdate().substring(0,10))){ %>
    	<img src="images/new.gif">
    	<%} %>
    	</td>
    	<td><%=dto.getWname() %></td>
    	<td><%=dto.getViewcnt() %></td>
    	<td><%=dto.getWdate().substring(0, 10) %></td>
    	
    	<td>
    	<% if(dto.getFilename()==null){ 
    		out.print("파일없음");
    	}else{
    		out.print("<span class='glyphicon glyphicon-download'></span>");
    	}
    		%>
 		</td>
    </tr>
<% } 
}%>
  </TABLE>
  </div>


  <DIV class='bottom'>
  <%=Utility.paging3(total, nowPage, recordPerPage, col, word) %>
  </DIV>

 
<!-- *********************************************** -->
<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>
<!-- *********************************************** -->
</html>