<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html  lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style_rm/skin.css" />
    <link href="${pageContext.request.contextPath}/css/Style1.css"
	rel="stylesheet" type="text/css" />
	
</head>
    <body>
        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
            <!-- 头部开始 -->
            <tr  >
                <td width="17" valign="top" background="${pageContext.request.contextPath}/Images_rm/mail_left_bg.gif">
                    <img src="${pageContext.request.contextPath}/Images_rm/left_top_right.gif" width="17" height="29" />
                </td>
                <td valign="top" background="${pageContext.request.contextPath}/Images_rm/content_bg.gif">
                    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" background="./${pageContext.request.contextPath}/Images_rm/content_bg.gif">
                        <tr><td height="31"><div class="title">用户管理</div></td></tr>
                    </table>
                </td>
                <td width="16" valign="top" background="${pageContext.request.contextPath}/Images_rm/mail_right_bg.gif"><img src="${pageContext.request.contextPath}/Images_rm/nav_right_bg.gif" width="16" height="29" /></td>
            </tr>
            <!-- 中间部分开始 -->
            
            <!--一条线  -->
    
            
            <tr height="auto">
                <!--第一行左边框-->
                <td valign="middle" background="${pageContext.request.contextPath}/Images_rm/mail_left_bg.gif">&nbsp;</td>
                <!--第一行中间内容-->
                <td valign="top" bgcolor="#F7F8F9">
		        
		        <div >
		        <iframe src="${pageContext.request.contextPath}/userAdmin_findAll.action" name="Frame1" width="100%" height="470" frameborder="0" scrolling="NO" noresize >
		        </iframe>
		        </div>
		       
	            

                </td>
                <td background="${pageContext.request.contextPath}/Images_rm/mail_right_bg.gif">&nbsp;</td>
            </tr>
            <!-- 底部部分 -->
            <tr>
                <td valign="bottom" background="${pageContext.request.contextPath}/Images_rm/mail_left_bg.gif">
                    <img src="${pageContext.request.contextPath}/Images_rm/buttom_left.gif" width="17" height="17" />
                </td>
                <td background="${pageContext.request.contextPath}/Images_rm/buttom_bgs.gif">
                    <img src="${pageContext.request.contextPath}/Images_rm/buttom_bgs.gif" width="17" height="17">
                </td>
                <td valign="bottom" background="${pageContext.request.contextPath}/Images_rm/mail_right_bg.gif">
                    <img src="${pageContext.request.contextPath}/Images_rm/buttom_right.gif" width="16" height="17" />
                </td>           
            </tr>
        </table>
    </body>
</html>