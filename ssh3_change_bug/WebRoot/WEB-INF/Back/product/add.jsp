<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<LINK href="${pageContext.request.contextPath}/css/Style1.css" type="text/css" rel="stylesheet">
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
	function isempoty() {
		var pname=document.getElementById("userAction_save_do_logonName").value;
		/* if(pname ="")
			{
			alert(pname+"t");
			} */
		var market_price=document.getElementById("market_price").value;
		if(isNaN(market_price))
			{
			alert(market_price+"m");
			}
		else{
			alert("no");
		}
		/* var shop_price=document.getElementById("shop_price").value;
		if(shop_price == "null")
			{
			alert(market_price+"m");
			} */
	}
	
	
	function checkRate()  
	{  
	var market_price=document.getElementById("market_price").value;	
	     var re = /^[0-9]+.?[0-9]*$/;         
	     if (isNaN(market_price))  
	    {  
	        alert("请输入数字(例:0.02)");  
	       
	        return false;  
	     }  
	     else {
	    	 alert("数字");
	     }
	} 
	
	var keyprice1 = true;
	var keyprice2 = true;
	var keyStock = true;
	
	function isOk(){
	 if(keyprice1 && keyprice2 && keyStock)
		{
		document.getElementById("userAction_save_do_submit").disabled= "";
		}
	else {
		document.getElementById("userAction_save_do_submit").disabled= "disable";	
	} 
		
	}
	
	function isDigitPrice1() 
	{ 
	var test_value=document.getElementById("market_price").value;
	/* alert(test_value); */
	//var patrn=/^([1-9]\d*|0)(\.\d*[1-9])?$/; 
	var patrn=/^\d+(\.\d)?$$/;
	/* alert(${model.pstock}+""); || (test_value > ${model.pstock})|| test_value <1 */
	if (!patrn.exec(test_value)  ) 
	{
		// alert(test_value);
		/* alert("错误");  saveCart()*/
	/* judge_msg */
	document.getElementById("judge_msg_price1").style.display= "inline";	
	keyprice1 =false;
	
	}
	else{
		document.getElementById("judge_msg_price1").style.display= "none";	
		keyprice1 =true;
	}
	
	 isOk();
	} 
	
	function isDigitPrice2() 
	{ 
	var test_value=document.getElementById("shop_price").value;
	/* alert(test_value); */
	//var patrn=/^([1-9]\d*|0)(\.\d*[1-9])?$/; 
	var patrn=/^\d+(\.\d)?$$/;
	/* alert(${model.pstock}+""); || (test_value > ${model.pstock})|| test_value <1 */
	if (!patrn.exec(test_value)  ) 
	{
		// alert(test_value);
		/* alert("错误");  saveCart()*/
	/* judge_msg */
	document.getElementById("judge_msg_price2").style.display= "inline";	
		skeyprice2 = false;
	
	}
	else{
		document.getElementById("judge_msg_price2").style.display= "none";	
		keyprice2 = true;
	}
	 isOk();
	} 
	
	function isDigit() 
	{ 
	var test_value=document.getElementById("pstock").value;
	/* alert(test_value); */
	var patrn=/^([1-9]\d*|0)?$/; 
	//var patrn=/^\d+(\.\d)?$$/;
	/* alert(${model.pstock}+""); || (test_value > ${model.pstock})|| test_value <1 */
	if (!patrn.exec(test_value) || test_value <1) 
	{
		
		/* alert("错误");  saveCart()*/
	/* judge_msg */
	document.getElementById("judge_msg").style.display= "inline";	
	keyStock =false;
	
	}
	else{
		document.getElementById("judge_msg").style.display= "none";	
		keyStock = true;
	}
	 isOk();
	} 
	</script>
	</HEAD>
	
	<body>
		<!--  -->
		<form id="userAction_save_do" name="Form1" action="${pageContext.request.contextPath}/adminProduct_save.action" method="post"  enctype="multipart/form-data" >
			&nbsp;
			<table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
						height="26">
						<strong><STRONG>添加商品</STRONG>
						</strong>
					</td>
				</tr>

				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						商品名称：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="pname" value="" id="pname" class="bg" />
					<span><s:fielderror /></span>
					</td>
					
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						是否热门：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<select name="is_hot">
							<option value="1">是</option>
							<option value="0">否</option>
						</select>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						市场价格：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="market_price" value="" id="market_price" class="bg" onkeyup="isDigitPrice1()"/>
					<span style="margin-left: 20px; color:red; display:none;" id="judge_msg_price1">请正确输入价格</span>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						商城价格：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="shop_price" value="" id="shop_price" class="bg"  onkeyup="isDigitPrice2()"/>
					<span style="margin-left: 20px; color:red; display:none;" id="judge_msg_price2">请正确输入价格</span>
					</td>
					
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						商品图片：
					</td>
					<td class="ta_01" bgColor="#ffffff" >
						<input type="file" name="upload" />
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						关键字：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="key_word" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						所属的二级分类：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="1">
						<select name="categorySecond.csid">
							<s:iterator var="cs" value="csList">
								<option value="<s:property value="#cs.csid"/>"><s:property value="#cs.csname"/></option>
							</s:iterator>
						</select>
					</td>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						库存：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="pstock" value="" id="pstock" class="bg" onkeyup="isDigit()"/>
						<span style="margin-left: 20px; color:red; display:none;" id="judge_msg">请正确输入库存量</span>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						商品描述：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<textarea name="pdesc" rows="5" cols="30"></textarea>
					</td>
				</tr>
				<tr>
					<td class="ta_01" style="WIDTH: 100%" align="center"
						bgColor="#f5fafe" colSpan="4">
						<button type="submit" id="userAction_save_do_submit" value="确定" class="button_ok" disabled="">
							&#30830;&#23450;
						</button>

						<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<button type="reset" value="重置" class="button_cancel">&#37325;&#32622;</button>

						<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回"/>
						<span id="Label1"></span>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>