<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<html >
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="${pageContext.request.contextPath}/Js_rm/prototype.lite.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/Js_rm/moo.fx.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/Js_rm/moo.fx.pack.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style_rm/skin.css" />
   
    <script type="text/javascript">
        window.onload = function () {
            var contents = document.getElementsByClassName('content');
            var toggles = document.getElementsByClassName('type');

            var myAccordion = new fx.Accordion(
            toggles, contents, {opacity: true, duration: 400}
            );
            myAccordion.showThisHideOpen(contents[0]);
            for(var i=0; i<document .getElementsByTagName("a").length; i++){
                var dl_a = document.getElementsByTagName("a")[i];
                    dl_a.onfocus=function(){
                        this.blur();
                    }
            }
        }
    </script>
</head>

<body>
    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
        <tr>
            <td width="182" valign="top">
                <div id="container">
                
                 <s:if test="#session.existadminuser.level < 2">
                    <h1 class="type"><a href="javascript:void(0)">用户管理</a></h1>
                    <div class="content">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td><img src="${pageContext.request.contextPath}/Images_rm/menu_top_line.gif" width="182" height="5" /></td>
                            </tr>
                        </table>
                        <ul class="RM">
                            <li><a href="userAdmin_show.action" target="mainFrame">用户管理</a></li>
                           <!--  <li><a href="./cat_manage.html" target="mainFrame">栏目管理</a></li> -->
                        </ul>
                    </div>
                  </s:if>
                    <h1 class="type"><a href="javascript:void(0)">分类管理</a></h1>
                    <div class="content">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td><img src="${pageContext.request.contextPath}/Images_rm/menu_top_line.gif" width="182" height="5" /></td>
                            </tr>
                        </table>
                        <ul class="RM">
                            <li><a href="${pageContext.request.contextPath}/adminCategory_findAllByOne.action" target="mainFrame">一级分类</a></li>
                            <li><a href="${pageContext.request.contextPath}/adminCategorySecond_findSecond.action" target="mainFrame">二级分类</a></li>
                           <!--  <li><a href="./goods_list.html" target="main">产品列表</a></li> -->
                        </ul>
                    </div>
                    <h1 class="type"><a href="javascript:void(0)">商品管理</a></h1>
                    <div class="content">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td><img src="${pageContext.request.contextPath}/Images_rm/menu_top_line.gif" width="182" height="5" /></td>
                            </tr>
                        </table>
                        <ul class="RM">
                            <li><a href="${pageContext.request.contextPath}/adminProduct_index.action" target="mainFrame">商品管理</a></li>
                          <!--   <li><a href="./order_2.html" target="main">处理中订单</a></li>
                            <li><a href="./order_3.html" target="main">已发货订单</a></li>
                            <li><a href="./order_4.html" target="main">已完成订单</a></li> -->
                        </ul>
                    </div>
                    <!-- *********** -->
                    <s:if test="#session.existadminuser.level < 2">
                    <h1 class="type"><a href="javascript:void(0)">订单管理</a></h1>
                    <div class="content">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td><img src="${pageContext.request.contextPath}/Images_rm/menu_top_line.gif" width="182" height="5" /></td>
                            </tr>
                        </table>
                        <ul class="RM">
                            <li><a href="${pageContext.request.contextPath}/adminOrder_findAll.action?page=1" target="mainFrame">所有订单</a></li>
                            <li><a href="${pageContext.request.contextPath}/adminOrder_findAllByState.action?states=1" target="mainFrame">未付款订单</a></li>
                            <li><a href="${pageContext.request.contextPath}/adminOrder_findAllByState.action?states=2" target="mainFrame">已付款订单</a></li>
                            <li><a href="${pageContext.request.contextPath}/adminOrder_findAllByState.action?states=3" target="mainFrame">已发货订单</a></li>
                             <li><a href="${pageContext.request.contextPath}/adminOrder_findAllByState.action?states=4" target="mainFrame">完成的订单</a></li>
                        </ul>
                    </div>
                    </s:if>
                    <!-- *********** -->
                    <h1 class="type"><a href="javascript:void(0)">其它设置</a></h1>
                    <div class="content">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td><img src="${pageContext.request.contextPath}/Images_rm/menu_top_line.gif" width="182" height="5" /></td>
                            </tr>
                        </table>
                        <ul class="RM">
                            <li><a href="javascript:void(0)" target="mainFrame">友情连接</a></li>
                            <li><a href="javascript:void(0)" target="mainFrame">在线留言</a></li>
                            <li><a href="javascript:void(0)" target="mainFrame">网站投票</a></li>
                            <li><a href="javascript:void(0)" target="mainFrame">邮箱设置</a></li>
                            <li><a href="javascript:void(0)" target="mainFrame">图片上传</a></li>
                        </ul>
                    </div>
                    <!-- *********** -->
                </div>
            </td>
        </tr>
    </table>
</body>
</html>
