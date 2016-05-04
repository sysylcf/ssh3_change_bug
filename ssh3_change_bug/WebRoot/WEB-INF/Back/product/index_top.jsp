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
	　<style type="text/css">
　　　　　　　　　#test11 br{
　　　　　　　　　　display:none;
　　　　　　　　　}
                #test11 {
                 margin-top: 0sp;
                 }
　　　　　　　　</style>
	
<script type="text/javascript">
			var index=0;
			function onJump() {
				 
				var select2=document.getElementById("doubleselect").value;
				/* alert(select2); */
				var select1 = document.getElementById("select").value;
				/* alert(select1); */

			                 /*    alert(val+index);  */
			                   
			                  // location.href="admincategory_findAll"; 
			                 
			                 /*  window.open("adminCategory_listIndex.action?index="+key, "mainFrame1");  */
			                  window.open("adminProduct_productList.action?ncsid="+select2+"&ncid="+select1+"&page="+'1', "mainFrame1");   
			                 /*  window.open("adminCategory_listIndex.action?wcid="+"6", "mainFrame1"); */
			                 //  window.open(url, windowName, windowFeatures, optionalArg4);
			               
			              
			                
			                   
			}
		</script>
</HEAD>
<body>
	
	<s:form id="Form1" name="Form1" method="post">
		<table cellSpacing="0" cellPadding="0" width="100%" align="center"
			bgColor="#f5fafe" border="0">
			
				<%-- <tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" ><strong>商品筛选
							</strong></td>
				</tr> --%>
				<tr>
					<td align="right" colspan="3" ><span>请选择所属类别：</span>
					 <%-- <s:select   id="select" name="bb" list="sList" listKey="vList" label="要管理的分类" theme="simple" onchange="onJump();"
				 value="bb"/> --%> <%--   <s:select   id="select" name="Category" list="cList" listKey="cid" listValue="cname" label="要管理的分类" theme="simple" value ="#session.category_cid" onchange="onJump();"
				 /> --%>
                                                                                                                        <!--   二级联动下拉框 -->
							<s:doubleselect id="select" name="Category" list="cList"
								listKey="cid" 
								listValue="cname" label="要管理的分类"
								value="cid" theme="simple"
								doubleList="sMap[cid]" 
								doubleName="csid" 
								doubleId="doubleselect" 
								doubleListKey="csid"
								doubleListValue="csname"
								 />
								<br>
								<button type="button" id="submit" name="adddd" 
							class="button_add" onclick="onJump();">查询</button>
							<br>
						 <!--onchange="onJump();"  -->
					</td>
					
						
				</tr>
				
				<!--<tr>
				
				 <tr>
					<td class="ta_01" align="right">
						<button type="button" id="add" name="add" value="提交"
							class="button_add" onclick="Jump()">&#28155;&#21152;</button>

					</td>
					
				</tr>


				<td class="ta_01" align="center" bgColor="#f5fafe"></td>
				</tr> -->
				<tr>
				<td>&nbsp;&nbsp;</td>
				</tr>
			
		</table>
	</s:form>
	
</body>
</HTML>

