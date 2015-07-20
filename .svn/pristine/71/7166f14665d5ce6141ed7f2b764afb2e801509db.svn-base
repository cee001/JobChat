<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'listmenu.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript">
           function check(xx){
                document.getElementById("cc"+xx).checked=true;
           
           }
           function ck(b){
           
			    var input = document.getElementsByTagName("input");
			
			    for (var i=0;i<input.length ;i++ )
			    {
			        if(input[i].type=="checkbox")
			            input[i].checked = b;
			    }
			}	
	</script>

  </head>
  
  <body >
     <div style="width:820px;height:480px;margin-left: 20px;margin-top: 30px;border: 1px solid;border-color:#B2DFEE;">
            <div style="width:818px;height:27px;border:1px solid;font-size:15px;
                 border-color:#ffffff;border-bottom-color:#B2DFEE;background: #F0F8FF;">
                 <div  style="margin-top: 5px;margin-left: 12px"> 
                 <b>列表角色&nbsp;<img alt="" src="images/jt07.png">&nbsp;权限分配</b> 
                 </div>
            </div>
	  <form action="men!doUpdatePower.action" method="post">
		    <input type="hidden" name="rid" value="${param.rid }"><!--param 参数  -->
		    <div style="width:808px;line-height: 30px;margin-left: 12px;height:400px">
		    <c:forEach var="m" items="${requestScope.al }">
		            <div style="width:200px;float: left;font-size: 15px;"><input id="cc${m.mid}" type="checkbox" name="mids" value="${m.mid}"> ${m.mid}--${m.mtitle }</div>
		    </c:forEach>
		    </div>
		    <br>
		    <div style="width:818px;margin-bottom:5px;padding-top:5px;border:1px solid;border-color:#ffffff;border-top-color:#B2DFEE;">
		    <script>
		    
		    <c:forEach var="p" items="${requestScope.alchild }">
		          //<!--  <input type="checkbox" name="mids" value="${p.menu.mid}"> -->
		           check(${p.menu.mid}); 
		            //&nbsp ${p.menu.mid}--${p.menu.mtitle }<br>
		    </c:forEach>
		    </script>
		    <input style="margin-left: 12px; " type="button" onclick="ck(true)" value="全选"><input type="button" onclick="ck(false)" value="反选">
		    <input type="submit" value="保 存" 
		             onmouseover="this.style.background='url(images/lan1.jpg)'" onmouseout="this.style.background='url(images/lan.jpg)'"
                     style="border:none;width:80px; height:20px;font-size:13px;color:#ffffff; background:url(images/lan.jpg)" />
		    </div>
		    
	  </form> 
	</div>   
  </body>
</html>
