<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<table width="100%">
	<tr> 
	<td align="center" width="8%">id</td>
	<td align="center">图片</td>
	<td align="center">商品名称</td>
	<td width="8%" align="center">数量</td>
	<td align="center">总价</td>
	<tr>
	<s:iterator var="orderItem" value="list">
	
	<tr>
		<td align="center" width="8%"><s:property value="#orderItem.product.pid"/></td>
		<td  align="center"><img width="40" height="45" src="${ pageContext.request.contextPath }/<s:property value="#orderItem.product.image"/>"></td>
		<td align="center"><s:property value="#orderItem.product.pname"/></td>
		<td width="8%" align="center" ><s:property value="#orderItem.count"/></td>
		<td align="center"><s:property value="#orderItem.subtotal"/></td>
	</tr>
	</s:iterator>
</table>