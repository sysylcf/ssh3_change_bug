<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.scrollFollow.js"></script>
    <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css"/>


    <div id="cleft_box" onmousemove="toBig()" onmouseout="toSmall()"
        style="position: absolute; right: 0px; top: 100px; padding:0px; margin:0px; overflow:hidden; width:36px;">
        <div style="margin:0px; padding:0px; overflow:hidden; width:166px;">
            <div style="width: 36px;height: 74px;color: #fff;font-size: 14px;font-weight: bold;text-align: center;margin-top: 15px;padding-top: 35px;cursor: pointer;cursor: pointer;float: left;background: url(${pageContext.request.contextPath}/image_tools/rtitleico.png) left top no-repeat !important; *background:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='rtitleico.png',sizingMethod='crop');">
                <span style="layout-flow: vertical-ideographic"></span>
            </div>
            <div style="width: 128px;overflow: hidden;float: right;background: none;">
               <%--  <div style="margin:0 auto; padding-left:20px; height:30px;background: url(${pageContext.request.contextPath}/image_tools/leftbg.png) left top no-repeat !important; *background:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='${pageContext.request.contextPath}/image_tools/leftbg.png',sizingMethod='crop');overflow:hidden;width:128px;">
                    <div style="margin:0 auto; width:128px; height:31px; line-height:31px;">
                    </div>
                </div> --%>
                <div style="text-align: center;width: 128px;">
                   <!--  <ul style="margin:0px; padding:0px;font-size:12px; list-style-type:none;">
                    
                      
                    </ul> -->
                     
	    <form action="${pageContext.request.contextPath }/product_findByString.action" method="get"> 
	
	<input type="hidden" name="page" value="1"/>
	<input type="text" class="seatext"  placeholder="请输入关键字" name="searchString" style="width: 128px;"/>
	<input type="submit" class="seabtn" value="搜索">
	</form>
    
  <%--   <div style=" float:bottom; width: 128px;height: 22px;background: url(${pageContext.request.contextPath}/image_tools/leftbt.png) left top no-repeat !important; *background:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='pageContext.request.contextPath}/image_tools/leftbt.png',sizingMethod='crop');">
        --%>             <a href="#" title="回到顶部 " id="toTop" onfocus="this.blur()" style=" float:bottom; width: 128px;height: 22px;background: url(${pageContext.request.contextPath}/image_tools/leftbt.png) left top no-repeat !important; *background:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='pageContext.request.contextPath}/image_tools/leftbt.png',sizingMethod='crop');"></a>
               <!--  </div> -->
                </div>
               	
                
            </div>
        </div>
    </div>

    <script language="javascript" type="text/javascript">
        var InterTime = 1;
        var maxWidth=166;
        var minWidth=36;
        var numInter = 8;
        var BigInter ;
        var SmallInter ;
        var o =  document.getElementById("cleft_box");
        var i;
        function Big()
        {
            if(parseInt(o.style.width)<166)
            {
                i = parseInt(o.style.width);
                i += numInter;	
                o.style.width=i+"px";	
                if(i==maxWidth) clearInterval(BigInter);
            }
        }
        function toBig()
        {
            clearInterval(SmallInter);
            clearInterval(BigInter);
            BigInter = setInterval(Big,InterTime);
        }
        function Small()
        {
            if(parseInt(o.style.width)>minWidth)
            {
                i = parseInt(o.style.width);
                i -= numInter;
                o.style.width=i+"px";

                if(i==minWidth) clearInterval(SmallInter);
            }
         }
         function toSmall()
         {
             clearInterval(SmallInter);
             clearInterval(BigInter);
             SmallInter = setInterval(Small,InterTime);
         }
</script>

