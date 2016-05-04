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

			var index=0;
			
			function onJump() {
				
				
				
				var select1 =document.getElementById('select');
				 index=select1.selectedIndex;
				var key = select1.options[index].value;  /* 对应 cid  */
				/*  alert(key);  */
				
			                 /*    alert(val+index);  */
			                   
			                  // location.href="admincategory_findAll"; 
			                 
			                 /*  window.open("adminCategory_listIndex.action?index="+key, "mainFrame1");  */
			                  window.open("adminCategorySecond_listIndex.action?category_cid="+key, "mainFrame1");   
			                 /*  window.open("adminCategory_listIndex.action?wcid="+"6", "mainFrame1"); */
			                 //  window.open(url, windowName, windowFeatures, optionalArg4);
			               
			              
			                
			                   
			}
		</script>
</HEAD>
<body>
	
	<form id="Form1" name="Form1"
		
		method="post">
		<table cellSpacing="1" cellPadding="0" width="100%" align="center"
			bgColor="#f5fafe" border="0">
			<TBODY>
				<%-- <tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" ><strong>二级分类管理
							</strong></td>
				</tr> --%>
				
				
				<tr >
				
				<td align="right" colspan="2" >
				<span>请选择要管理的一级分类：</span>
				
				<%-- <s:select   id="select" name="bb" list="sList" listKey="vList" label="要管理的分类" theme="simple" onchange="onJump();"
				 value="bb"/> --%>
				  <s:select   id="select" name="Category" list="cList" listKey="cid" listValue="cname" label="要管理的分类" theme="simple" value ="#session.category_cid" onchange="onJump();"
				 />
				     <%-- <s:doubleselect   id="select" name="Category" list="cList" listKey="cid" listValue="cname"
				      label="要管理的分类" theme="simple" value ="#session.category_cid" 
				      doubleList="cList" doubleName="Category"  doubleListValue="cname" onchange="onJump();"
				 /> --%>
				
							</td>
				<tr>
				
				
				<!-- <tr>
					<td class="ta_01" align="right">
						<button type="button" id="add" name="add" value="提交"
							class="button_add" onclick="Jump()">&#28155;&#21152;
						</button>

					</td>
				</tr> -->
				
				
					<td class="ta_01" align="center" bgColor="#f5fafe">
					
					
						
					</td>
				</tr>
				<tr>
				<td>&nbsp;&nbsp;</td>
				</tr>
			</TBODY>
		</table>
	</form>
</body>
</HTML>

