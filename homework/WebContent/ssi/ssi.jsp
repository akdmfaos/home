<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="member.*" %>
<%@ page import="utility.*" %>
<%@ page import="bbs.*" %>
<%@ page import="image.*" %>
<%@ page import="address.*" %>
<%@ page import="memo.*" %>


<jsp:useBean id="dao" class="member.MemberDAO"/>
<jsp:useBean id="bdao" class="bbs.BbsDAO"/>
<jsp:useBean id="adao" class="address.AddressDAO"/>
<jsp:useBean id="idao" class="image.ImageDAO"/>

<jsp:useBean id="mdao" class="memo.MemoDAO"/>


<%    
	request.setCharacterEncoding("utf-8");
    String root = request.getContextPath();
    //-- 업로드용 변수 선언(폴더명)
	/* String upDir = "/test/storage";
    String tempDir = "/test/temp";
    
    upDir = application.getRealPath(upDir); // c:나 d: 경로까지 뽑아낼수있음
    tempDir = application.getRealPath(tempDir); // c:나 d: 경로까지 뽑아낼수있음*/

%> 