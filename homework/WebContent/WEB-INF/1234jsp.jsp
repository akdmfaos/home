<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
<!--
a {
color: blue;
text-decoration: none;
}

a:hover {
color: lime;
text-decoration: none;

}
-->
</style></HEAD>

<BODY bgcolor="red" text="orange" onLoad="DigitalTime()">
<SPAN id="liveclock" style="position:absolute;left:313px;top:29px;width:150px;height:50px;"> 
</SPAN>
<SCRIPT language="JavaScript">
<!-- begin
// http://Q333.com
// 2000 YouJung 
// webmaster@q333.com
function DigitalTime()

{

if (!document.layers && !document.all)

return

var DigitalClock = new Date();

var hours = DigitalClock.getHours();

var minutes = DigitalClock.getMinutes();

var seconds = DigitalClock.getSeconds();

var dn = "AM";

if (hours > 12)

{

dn = "PM";

hours = hours - 12;

}

if (hours == 0)

hours = 12;

if (minutes <= 9)

minutes = "0" + minutes;

if (seconds <= 9)

seconds = "0" + seconds;

//change font size here to your desire

digclock = "<font size='5' face='Arial' color='orange'><b>" +
"<font size='1'>Current Time:</font></br>" +
"<a href='http://myhome.naver.com/internet79/home2/php.htm'>" +
hours + ":" + minutes + ":" + seconds + " " + dn + "</a></b></font>";

if (document.layers)

{
document.layers.liveclock.document.write(digclock);

document.layers.liveclock.document.close();

}

else if (document.all)

liveclock.innerHTML = digclock;

setTimeout("DigitalTime()",1000)


}

//-->
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>

</body>
</html>
