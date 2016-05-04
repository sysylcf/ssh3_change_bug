<%@page import="org.apache.struts2.ServletActionContext"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/Style1.css"
	rel="stylesheet" type="text/css" />
	
<script language="javascript"
	src="${pageContext.request.contextPath}/js/public.js"></script>
	<script type="text/javascript">
			function addUser(){
				window.location.href = "${pageContext.request.contextPath}/adminCategorySecond_add_jump.action?category_cid="+<s:property value="#session.category_cid" />;
			}
		</script>

</HEAD>
<body>
      
	
	<form id="Form1" name="Form1"
		action="${pageContext.request.contextPath}test_testwelcome.action"
		method="post">
		<table cellSpacing="1" cellPadding="0" width="100%" align="center"
			bgColor="#f5fafe" border="0">
			<TBODY>
				<tr>
					<td align="right">
						<button type="button" id="add" name="add" value="添加"
							class="button_add" onclick="addUser()">&#28155;&#21152;
						</button>

					</td>
				</tr>
				

					
						<table cellspacing="0" cellpadding="1" rules="all"
							bordercolor="gray" border="1" id="DataGrid1"
							style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
							<tr
								style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

								<td align="center" width="18%">序号</td>
								<td align="center" width="17%">二级分类名称</td>
								<td width="7%" align="center">编辑</td>
								<td width="7%" align="center">删除</td>
							</tr>
							
							
								
							       
								<%--  一级菜单--%>
								
								<s:iterator var="c" value="cList" status="L">	
								<%--  <s:if test="#L.index==#session.category_cid">   --%>
								<s:if test="#c.cid==#session.category_cid"> 
									
								<s:iterator var="cs" value="#c.categorySeconds"  status="status">
								<%-- <s:iterator var="cs" value="sList"  status="status"> --%>
								<tr onmouseover="this.style.backgroundColor = 'white'"
									onmouseout="this.style.backgroundColor = '#F5FAFE';">
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="18%"><s:property value="#status.count" /></td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="17%"><s:property value="#cs.csname" /></td>
									<td align="center" style="HEIGHT: 22px"><a
										href="${pageContext.request.contextPath}/adminCategorySecond_edit.action?csid=<s:property value="#cs.csid"/>">
											<img
											src="${pageContext.request.contextPath}/images_back/i_edit.gif"
											border="0" style="CURSOR: hand">
									</a></td>

									<td align="center" style="HEIGHT: 22px"><a
										href="${pageContext.request.contextPath}/adminCategorySecond_delete.action?csid=<s:property value="#cs.csid"/>">
											<img
											src="${pageContext.request.contextPath}/images_back/i_del.gif"
											width="16" height="16" border="0" style="CURSOR: hand">
									</a></td>
								</tr>
								</s:iterator>
								
								
								
								 </s:if>
							           </s:iterator>
							
							
								
				
						</table>
					</td>
				</tr>
			</TBODY>
		</table>
	</form>
</body>
</HTML>

