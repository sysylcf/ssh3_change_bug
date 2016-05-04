<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style_rm/skin.css" />
    <script type="text/javascript">
        function logout() {
            if(window.confirm('您确定要退出吗？')) {
               /*  top.location = '${pageContext.request.contextPath}/adminuser_quit.action'; */
                window.open("${pageContext.request.contextPath}/adminuser_quit.action", "mainFrame1"); 
            }
        }       
    </script>
</head>
    <body>
        <table cellpadding="0" width="100%" height="64" background="${pageContext.request.contextPath}/Images_rm/top_top_bg.gif">
            <tr valign="top">
                <td width="50%"><a href="${pageContext.request.contextPath}/test_welcome.action" target="mainFrame"><img style="border:none" src="${pageContext.request.contextPath}/Images_rm/logo.png" /></a></td>
                <td width="30%" style="padding-top:13px;font:15px Arial,SimSun,sans-serif;color:#FFF">管理员：<a href="${pageContext.request.contextPath}/adminuser_edit.action" target="mainFrame"><b><s:property value="#session.existadminuser.username"/></b></a> 您好，感谢登陆使用！</td>
                <td style="padding-top:10px;" align="center"><a href="javascript:void(0)"><img style="border:none" src="${pageContext.request.contextPath}/Images_rm/index.gif" /></a></td>
                <td style="padding-top:10px;" align="center"><a href="javascript:void(0)"><img style="border:none" src="${pageContext.request.contextPath}/Images_rm/out.gif" onclick="logout();" /></td>
            </tr>
        </table>
    </body>
</html>