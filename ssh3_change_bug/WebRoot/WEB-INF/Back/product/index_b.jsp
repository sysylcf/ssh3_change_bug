<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
  


  
<frameset rows="21%,*,0%" frameborder=0 border="3" framespacing="0">
<!-- <frame src="adminCategory_findAll.action" name="topFrame" scrolling="NO" noresize> -->
  <frame src="adminProduct_indexTop.action" name="topFrame" scrolling="NO" noresize >
  <frame src="adminProduct_productList.action " name="mainFrame1" scrolling="NO">
<!-- <frame src="adminCategory_listTop.action" name="mainFrame1" scrolling="NO"> -->
</frameset>
</html>
