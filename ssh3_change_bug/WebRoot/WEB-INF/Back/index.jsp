<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<meta charset="utf-8"/>
<title>后台登录</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css_login/style.css" />
<style>
body{height:100%;background:#16a085;overflow:hidden;}
canvas{z-index:-1;position:absolute;}
</style>
 <script src="${pageContext.request.contextPath }/js_login/jquery.js"></script>
<script src="${pageContext.request.contextPath }/js_login/verificationNumbers.js"></script>
<script src="${pageContext.request.contextPath }/js_login/Particleground.js"></script>
<script>
$(document).ready(function() {
  //粒子背景特效
  $('body').particleground({
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
  //验证码
  createCode();
  //测试提交，对接程序删除即可
  $(".submit_btn").click(function(){
	  location.href="${pageContext.request.contextPath }/adminuser_login.action";
	  });
});
</script>
</head>
<body>

 <form method="post" action="${pageContext.request.contextPath }/adminuser_login.action" target="_parent" name='theForm' ">
<dl class="admin_login">
 <dt>
  <strong>站点后台管理系统</strong>
  <em>Management System</em>
 </dt>
 <dt>

 <h2 id="text_color"> <s:actionerror /></h2>
 </dt>

 
  <dd class="user_icon">
  <input type="text" placeholder="账号" class="login_txtbx"  name="username"/>
 </dd>
 <dd class="pwd_icon">
  <input type="password" placeholder="密码" class="login_txtbx" name="password"/>
 </dd>
 <!-- <dd class="val_icon">
  <div class="checkcode">
    <input type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx">
    <canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
  </div>
  <input type="button" value="验证码核验" class="ver_btn" onClick="validate();">
 </dd> -->
 <dd>
  <input type="submit" value="立即登陆" class="submit_btn"/>
 </dd>
 
 </form> 
</body>
</html>
