<%@ page language="java" pageEncoding="UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
		body
		{
			SCROLLBAR-ARROW-COLOR: #ffffff;  SCROLLBAR-BASE-COLOR: #dee3f7;
		}
    </style>
  </head>
  
<frameset rows="10%,*,10%" frameborder=0 border="3" framespacing="0">
  <frame src="test_top.action" name="topFrame" scrolling="NO" noresize>
  <frameset cols="15%,*" frameborder="0" border="3" framespacing="0">
		<frame src="test_left.action" name="leftFrame" height="30" noresize scrolling="YES">
		<frame src="test_welcome.action" height="30" name="mainFrame">
  </frameset>
  <frame src="test_bottom.action" name="bottomFrame" scrolling="NO"  noresize>
</frameset>
</html>
