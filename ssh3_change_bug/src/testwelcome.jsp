<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="span24">
	<ul class="mainNav">
		
		<s:iterator var="c" value="#session.admincList">
				<li>
				
				<a href="${ pageContext.request.contextPath }/product_findByCid.action?cid=
				<s:property value="#c.cid"/>
				&page=1">
				<s:property value="#c.cname"/>
				</a>
				
				 |</li> 
				<%-- <li>
				<s:property value="#c.cid"/>
				<s:property value="#c.cname"/>
				</li> --%>
	
		</s:iterator>

	</ul>
</div>
</body>
</html>