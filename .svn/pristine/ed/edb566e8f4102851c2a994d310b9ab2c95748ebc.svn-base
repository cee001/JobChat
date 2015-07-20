<%@page import="javax.management.relation.RoleInfo"%>

<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'addbooktype.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<script>
		   function dodelete(typeId){
	       if(confirm("确定删除吗？")){
	              location.href="book1?t=dodelete&typeId="+typeId;
	       }
	   }
	function checkrole(){
		
		var objL1=document.getElementById("roleid");
		
		if(objL1.value==""){
			alert("请填入角色名!");
			objL1.focus();
			return false;
		}		
		
		if(objL1.value.length<2){
			alert("字符不得少于2位!");
			objL1.focus();
			return false;
		}
		}	
	</script>
  </head>
  
  <body >
    <form onsubmit="return checkrole()" action="role!doadd.action" method="post">
     <div style="width:820px;height:320px;margin-left: 20px;margin-top: 30px;border: 1px solid;border-color:#B2DFEE;overflow:hidden;">  
          <div style="width:818px;height:27px;border:1px solid;font-size:15px;
               border-color:#ffffff;border-bottom-color:#B2DFEE;background: #F0F8FF;">
	      <div  style="margin-top: 5px;margin-left: 12px;"> 
	          <b>添加角色</b> 
          </div>
          </div>        
	      <div style="width:825px;line-height:30px;margin-left: 0px;margin-top: 30px;"> 
	            <ul style="margin-left:-3px;width:820px;height:25px;font-size:15px;
                    border: 1px solid;border-color:#B2DFEE;border-left-color:#ffffff;padding: 0px">
                   <li style="margin-left:0px;width:100px;float: left;text-align:right;width:271px;height:23px;
                       border: 1px solid;border-color:#FFFFFF;border-right-color: #B2DFEE;background: #F0F8FF;">
                     <table height="100%" align="right"><tr><td>角色名称：</td></tr></table>
                   </li>             
                   <li style="float: left;list-style-type:none;width:271px;height:23px;text-align:left;">
                       <div style="margin-top: 1px;border: 1px solid;border-color:#7A7A7A;width:200px;height:90%">
                            <input id="roleid" type="text" style="border:0;width:100%" name="ri.roleName" />
                       </div>
                   </li>   
    
                </ul>        
	            <ul style="margin-left:-3px;width:820px;height:25px;font-size:15px;
                    border: 1px solid;border-color:#B2DFEE;border-left-color:#ffffff;padding: 0px">
                   <li style="margin-left:0px;width:100px;float: left;color:#FF6347;text-align:right;width:271px;height:23px;
                       border: 1px solid;border-color:#FFFFFF;border-right-color: #B2DFEE;background: #F0F8FF;">
                     <div style="margin-top: 0px;margin-right: 2px">
	        		      <input type="submit" value="提 交" 
			              onmouseover="this.style.background='url(images/lan1.jpg)'" onmouseout="this.style.background='url(images/lan.jpg)'"
	                      style="margin-left: 12px; border:none;width:80px; height:22px;font-size:14px;color:#ffffff; background:url(images/lan.jpg)" />                     
                     </div>
                   </li>             
 
    
                </ul>                   

	   
         </div>                 
     </div>     
    </form>
  </body>
</html>
