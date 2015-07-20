
<%@page import="com.jobchat.entity.Admin"%>
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

	<script type="text/javascript" src="js/jquery.js"></script>	 	
	<script>
		   function dodelete(typeId){
	       if(confirm("确定删除吗？")){
	              location.href="book1?t=dodelete&typeId="+typeId;
	       }
	   }
	     $(function(){   

	           $.ajax({   	       		
				     type:"post",
		             url:"mobile!mobile.action",	 				      
				     dataType:"json",
      		         data:"para="+JSON.stringify(GetJsonData1()), 
				     success:function(d){
				     var num=d.data;			         
				     $("#divnum1").html(num);              
			    } 
			    });
	           $.ajax({   	       		
				     type:"post",
		             url:"mobile!mobile.action",	 				      
				     dataType:"json",
      		         data:"para="+JSON.stringify(GetJsonData2()), 
				     success:function(d){
				     var num=d.data;				         
				     $("#divnum2").html(num);              
			    } 
			    });
	           $.ajax({   	       		
				     type:"post",
		             url:"mobile!mobile.action",	 				      
				     dataType:"json",
      		         data:"para="+JSON.stringify(GetJsonData3()), 
				     success:function(d){
				     var num=d.data;			         
				     $("#divnum3").html(num);              
			    } 
			    });
	           $.ajax({   	       		
				     type:"post",
		             url:"mobile!mobile.action",	 				      
				     dataType:"json",
      		         data:"para="+JSON.stringify(GetJsonData4()), 
				     success:function(d){
				     var num=d.data;			         
				     $("#divnum4").html(num);              
			    } 
			    });					    		    			    	    			    			    
			    });

			    		       
       	   function GetJsonData1() {
       
			    var json ={
			    "sendtype":10054,
			    "data":{
			    "para":1,
			    }};
			    return json;
			}
       	   function GetJsonData2() {
       
			    var json ={
			    "sendtype":10055,
			    "data":{
			    "para":1,
			    }};
			    return json;
			}
       	   function GetJsonData3() {
       
			    var json ={
			    "sendtype":10053,
			    "data":{
			    "para":1,
			    }};
			    return json;
			}	
       	   function GetJsonData4() {
       
			    var json ={
			    "sendtype":10029,
			    "data":{
			    "para":1,
			    }};
			    return json;
			}	
																
	</script>
  </head>
  
  <body >

    <form action="role!doadd.action" method="post">
     <div style="width:820px;height:420px;margin-left: 20px;margin-top: 30px;border: 1px solid;border-color:#B2DFEE;overflow:hidden;">  
          <div style="width:818px;height:27px;border:1px solid;font-size:15px;
               border-color:#ffffff;border-bottom-color:#B2DFEE;background:url(images/27.png)">
	      <div  style="margin-top: 5px;margin-left: 12px;"> 
	          <b>欢迎登录</b> 
          </div>
          </div>        
	      <div style="width:825px;line-height: 30px;margin-left: 0px;margin-top: 0px;"> 
	        <ul style="margin-left:-3px;width:820px;height:25px;font-size:15px;padding: 0px;list-style-type: none;">
	   		    <li style="margin-top:10px;margin-left:20px;width:100px;float: left;border:1px solid;border-color:#B2DFEE;padding: 2px">
					<% Admin am=(Admin)session.getAttribute("sunlogin"); %>   	
						<div style="margin-top:0px;margin-left:0px;">		
						    <img width="100" height="100" style="border:0px"  src="images/admin.png"/>					 						 	
						</div>  				  
			    </li >
			    <li style="float:left;margin-left:20px;margin-top: 16px;font-family:黑体;width:330px;line-height:30px;text-align: left;font-size:15px">
	               <font color="#1C86EE" size="4px">欢迎使用JobChat后台管理系统</font><br> 
			                         账户名称：<%=am.getLoginId() %>
			
			        <br>
			                          部门角色：<%=am.getRoleinfo().getRoleName() %>	     
			    </li>
            </ul>                   

	      </div>
          <div style="width:818px;height:27px;border:1px solid;font-size:15px;margin-top:120px;
               border-color:#ffffff;border-top-color:#B2DFEE;border-bottom-color:#B2DFEE;background:#cce5ff">
	      <div  style="margin-top: 5px;margin-left: 12px;"> 
	          <b>数据信息</b> 
          </div>
          <div style="margin-top: 8px;">
		    <table align="center" 
		           style="border-collapse: collapse;width:100%;line-height: 25px;font-size:14px;line-height: 35px;" cellpadding="0" cellspacing="0">   
		     
		      <tr align="left">     
		          <td width="120">&nbsp;&nbsp;个人总数：</td><td width="280"><div id="divnum1"></div></td>
		          <td width="108">企业总数：</td><td><div id="divnum2"></div></td>  
		      </tr >   
		     <tr align="left">
			     <td>&nbsp;&nbsp;资讯总数：</td><td><div id="divnum3"></div></td>
			     <td>评论总数：</td><td><div id="divnum4"></div></td>  
		     </tr>		
		     	
		  </table>          
          </div>
          </div>                          
     </div>     
    </form>
  </body>
</html>
