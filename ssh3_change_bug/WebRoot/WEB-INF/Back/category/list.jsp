<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html  lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style_rm/skin.css" />
    <link href="${pageContext.request.contextPath}/css/Style1.css"
	rel="stylesheet" type="text/css" />
	<script type="text/javascript">
			function addUser(){
				window.location.href = "${pageContext.request.contextPath}/adminCategory_add_jump.action";
			}
		</script>
</head>
    <body>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!-- 头部开始 -->
            <tr>
                <td width="17" valign="top" background="${pageContext.request.contextPath}/Images_rm/mail_left_bg.gif">
                    <img src="${pageContext.request.contextPath}/Images_rm/left_top_right.gif" width="17" height="29" />
                </td>
                <td valign="top" background="${pageContext.request.contextPath}/Images_rm/content_bg.gif">
                    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" background="./${pageContext.request.contextPath}/Images_rm/content_bg.gif">
                        <tr><td height="31"><div class="title">一级分类</div></td></tr>
                    </table>
                </td>
                <td width="16" valign="top" background="${pageContext.request.contextPath}/Images_rm/mail_right_bg.gif"><img src="${pageContext.request.contextPath}/Images_rm/nav_right_bg.gif" width="16" height="29" /></td>
            </tr>
            <!-- 中间部分开始 -->
            <tr height="470">
                <!--第一行左边框-->
                <td valign="middle" background="${pageContext.request.contextPath}/Images_rm/mail_left_bg.gif">&nbsp;</td>
                <!--第一行中间内容-->
                <td valign="top" bgcolor="#F7F8F9">
               
                    <form id="Form1" name="Form1"
		action="${pageContext.request.contextPath}/test_testwelcome.action"
		method="post">
		<table cellSpacing="1" cellPadding="0" width="100%" align="center"
			bgColor="#f5fafe" border="0">
			<TBODY>
			

				<tr>
					<td class="ta_01" align="right">
						<button type="button" id="add" name="add" value="添加"
							class="button_add" onclick="addUser()">&#28155;&#21152;
						</button>

					</td>
				</tr>
				<tr>
					<td class="ta_01" align="center" bgColor="#f5fafe">
						<table cellspacing="0" cellpadding="1" rules="all"
							bordercolor="gray" border="1" id="DataGrid1"
							style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
							<tr
								style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

								<td align="center" width="18%">序号</td>
								<td align="center" width="17%">一级分类名称</td>
								<td width="7%" align="center">编辑</td>
								<td width="7%" align="center">删除</td>
							</tr>
							
							<s:iterator var="c" value="cList" status="status">
								<tr onmouseover="this.style.backgroundColor = 'white'"
									onmouseout="this.style.backgroundColor = '#F5FAFE';">
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="18%"><s:property value="#status.count" /></td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="17%"><s:property value="#c.cname" /></td>
									<td align="center" style="HEIGHT: 22px"><a
										href="${pageContext.request.contextPath}/adminCategory_edit.action?cid=<s:property value="#c.cid"/>">
											<img
											src="${pageContext.request.contextPath}/images_back/i_edit.gif"
											border="0" style="CURSOR: hand">
									</a></td>
									<td align="center" style="HEIGHT: 22px"><a
										href="${pageContext.request.contextPath}/adminCategory_delete.action?cid=<s:property value="#c.cid"/>">
											<img
											src="${pageContext.request.contextPath}/images_back/i_del.gif"
											width="16" height="16" border="0" style="CURSOR: hand">
									</a></td>
								</tr>
							</s:iterator>
						</table>
					</td>
				</tr>
			</TBODY>
		</table>
	</form> 
                </td>
                <td background="${pageContext.request.contextPath}/Images_rm/mail_right_bg.gif">&nbsp;</td>
            </tr>
            <!-- 底部部分 -->
            <tr >
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