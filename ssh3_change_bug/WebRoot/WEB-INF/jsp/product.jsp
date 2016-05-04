<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<title>网上商城</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/product.css" rel="stylesheet" type="text/css"/>
 <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script>
	function saveCart(){
		document.getElementById("cartForm").submit();
	}
	
	function ready(){
		/* alert(document.getElementById("count").val());
		alert(isNaN($('#count').val())); */
		alert("ccc"+document.getElementById("count").value);
		if(!isUnsignedInteger)
		{
		alert("ddddd");	
		}
	}
	
	function   isUnsignedInteger()
	{
		var cc =document.getElementById("count").value;
		alert(cc+"ss");	
	    var   reg =/^d+$/
	    return reg.test(cc);
	}
	
	
	function isDigit() 
	{ 
	var test_value=document.getElementById("count").value;
	/* alert(test_value); */
	var patrn=/^([1-9]\d*|0)(\.\d*[1-9])?$/; 
	
	/* alert(${model.pstock}+""); */
	if (!patrn.exec(test_value)|| (test_value > ${model.pstock})|| test_value <1) 
	{
		/* alert("错误");  saveCart()*/
	/* judge_msg */
	document.getElementById("judge_msg").style.display= "inline";	
	document.getElementById("addCart").disabled= "disabled";
	
	}
	else{
		document.getElementById("judge_msg").style.display= "none";	
		document.getElementById("addCart").disabled= "";
	}
	} 
	
	
</script>



</head>
<body>

<%-- <div class="container header">
	<div class="span5">
		<div class="logo">
			<a href="./">
				<img src="${pageContext.request.contextPath}/image/r___________renleipic_01/logo.jpg" alt="logo">
			</a>
		</div>
	</div>
	<div class="span9">
<div class="headerAd">
					<img src="${pageContext.request.contextPath}/image/header.jpg" alt="正品保障" title="正品保障" height="50" width="320">
</div>	</div>
	
	<%@ include file="menu.jsp" %>

</div>
--%>
 <%@ include file="head.jsp" %>  
<div class="container productContent"> 

		<div class="span6">
			<div class="hotProductCategory">
					<s:iterator var="c" value="#session.cList">
						<dl>
							<dt>
								<a href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="#c.cid"/>&page=1"><s:property value="#c.cname"/></a>
							</dt>
								<s:iterator var="cs" value="#c.categorySeconds">
									<dd>
										<a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="#cs.csid"/>&page=1"><s:property value="#cs.csname"/></a>
									</dd>
								</s:iterator>	
						</dl>
					</s:iterator>	
			</div>
			

		</div>
		
		<div class="span18 last">
			
			<div class="productImage">
					<a title="" style="outline-style: none; text-decoration: none;" id="zoom" href="http://image/r___________renleipic_01/bigPic1ea8f1c9-8b8e-4262-8ca9-690912434692.jpg" rel="gallery">
						<div class="zoomPad"><img style="opacity: 1;" title="" class="medium" src="${ pageContext.request.contextPath }/<s:property value="model.image"/>"><div style="display: block; top: 0px; left: 162px; width: 0px; height: 0px; position: absolute; border-width: 1px;" class="zoomPup"></div>
						<div style="position: absolute; z-index: 5001; left: 312px; top: 0px; display: block;" class="zoomWindow">
						<div style="width: 368px;" class="zoomWrapper">
						<div style="width: 100%; position: absolute; display: none;" class="zoomWrapperTitle"></div><div style="width: 0%; height: 0px;" class="zoomWrapperImage"><img  style="position: absolute; border: 0px none; display: block; left: -432px; top: 0px;"></div></div></div><div style="visibility: hidden; top: 129.5px; left: 106px; position: absolute;" class="zoomPreload">Loading zoom</div></div>
					</a>
				
			</div>
			<div class="name"><s:property value="model.pname"/></div>
			<div class="sn">
				<div>编号：<s:property value="model.pid"/></div>
			</div>
			<div class="info">
				<dl>
					<dt>商城价:</dt>
					<dd>
						<strong>￥：<s:property value="model.shop_price"/>元</strong>
							参 考 价：
							<del>￥<s:property value="model.market_price"/>元</del>
					</dd>
				</dl>
					<dl>
						<dt>促销:</dt>
						<dd>
								<a target="_blank" title="限时抢购 (2014-07-30 ~ 2015-01-01)">限时抢购</a>
						</dd>
					</dl>
					<dl>
						<dt>    </dt>
						<dd>
							<span>    </span>
						</dd>
					</dl>
			</div>
			<form id="cartForm" action="${ pageContext.request.contextPath }/cart_addCart.action" method="post" >
				<input type="hidden" name="pid" value="<s:property value="model.pid"/>"/>
				<div class="action">
						<dl class="quantity">
							<dt>购买数量:</dt>
							<dd>
								<input id="count" name="count" value="1" maxlength="4" onpaste="return false;" type="text"  onKeyUp="isDigit()" style="width:40px"/>
							</dd>
							<dd>
								件
							</dd>
							<dd>
								<span >(库存  <s:property value="model.pstock" />  件 )</span>  <span style="margin-left: 20px; color:red; display:none;" id="judge_msg">请正确输入商品数量</span>
							
							</dd> 
						</dl>
						
					<div class="buy">
							<input id="addCart" class="addCart" value="加入购物车" type="button" onclick="saveCart()" />
					</div>
				</div>
			</form>
			<div id="bar" class="bar">
				<ul>
						<li id="introductionTab">
							<a href="#introduction">商品介绍</a>
						</li>
						
				</ul>
			</div>
				
				<div id="introduction" name="introduction" class="introduction">
					<div class="title">
						<strong><s:property value="model.pdesc"/></strong>
					</div>
					<div>
						<img src="${pageContext.request.contextPath }/<s:property value="model.image"/>">
					</div>
				</div>
				
				
				
		</div>
	</div>
<div class="container footer">
	<div class="span24">
		<div class="footerAd">
					<img src="${pageContext.request.contextPath}/image/footer.jpg" alt="我们的优势" title="我们的优势" height="52" width="950">
</div>
</div>
	<div class="span24">
		<ul class="bottomNav">
					<li>
						<a href="#">关于我们</a>
						|
					</li>
					<li>
						<a href="#">联系我们</a>
						|
					</li>
					<li>
						<a href="#">诚聘英才</a>
						|
					</li>
					<li>
						<a href="#">法律声明</a>
						|
					</li>
					<li>
						<a>友情链接</a>
						|
					</li>
					<li>
						<a target="_blank">支付方式</a>
						|
					</li>
					<li>
						<a target="_blank">配送方式</a>
						|
					</li>
					<li>
						<a >SHOP++官网</a>
						|
					</li>
					<li>
						<a>SHOP++论坛</a>
						
					</li>
		</ul>
	</div>
	<div class="span24">
		<div class="copyright">Copyright © 2005-2015 网上商城 版权所有</div>
	</div>
</div>
</body>
</html>