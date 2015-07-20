
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'listur.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery.js"></script>	 	
	<style type="text/css">
   
    a:link{text-decoration : none ;color :#104E8B;} 
	a:visited {text-decoration : none ;color : #525252;} 
	a:hover {text-decoration : underline ;color :#CD0000 ;} 
	a:active {text-decoration : none ;color :#212121 ;}	  
	</style>
    <script>
			$(function(div){
			    $("tr:odd").css({background: "#FFFFFF"}); // 1, 3…… 行
			    $("tr:even").css({background: "#F8F8FF"}); // 2, 4…… 行
			});	    
		
       function doUpdate(comid,sid){
            if(sid==1){

             if(confirm("确定删除吗？")){
                $.ajax({
                       async:false,                
				       type:"post",                         
				       url:"com!doUpdatelocal.action?comid="+comid,	                        
				       data:"commentsInfostatus="+sid,	
				       success:function(d){	
				                    
		                          window.location.href="com!listlocalcom.action?tRandStr="+Math.random();
			                                                                         
			                    }	                                  		           		                  	     		     
		
				       });

		   alert("ok");  
         }
         }else{

                $.ajax({
                       async:false,                
				       type:"post",                         
				       url:"com!doUpdatelocal.action?comid="+comid,	 
                         
				       data:"commentsInfostatus="+sid,	
				       success:function(d){	
				                    
		                          window.location.href="com!listlocalcom.action?tRandStr="+Math.random();
			                                                                         
			                    }	                                  		           		                  	     		     
		
				       });

		   alert("ok");  
         }         
         
         }
 
         	  
 		       
      
            

  	    function changeif(a){

            if(a==1){
	        document.getElementById("dvif1").style.display="block";
            }else{
	        document.getElementById("dvif1").style.display="none";	   
	        } 
	    }    
    </script>
  </head>
  
  <body>
 
   <div id="dvmsgid">
    <table   border="1" bordercolor="#B2DFEE" align="center" style="border-collapse: collapse;width:100%;line-height: 25px;font-size:14px;" cellpadding="0" cellspacing="0">   
      <tr>     
          <td colspan="7" bgcolor="#F0F8FF">
            <div style="font-size:15px;border-bottom:1px solid;border-bottom-color:#B2DFEE;">
                 <div  style="margin-top: 5px;margin-left: 12px"> 
                 <b>列表评论</b> 
                 </div>
            </div>
          </td>   
      </tr> 
       <tr>     
          <td colspan="7" >
	       <div id="dvif1" style="display: none;width:100%;">
	       	<div style="font-size:15px;width:100%;">
               <div  style="margin-top: 0px;margin-left: 0px;padding0pxtext-align: right;width:100%;"> 
                  <ul style="padding: 0px;margin-top:0px;list-style-type: none;float: right;width:100%;background:#F8F8FF;border-bottom:1px solid;border-bottom-color:#B2DFEE;">
                   <li style="margin-right: 0px;margin-top: 0px;margin-right:1px;float: right;">
                     <img width="22px" onclick="changeif()"  alt="" src="images/gb.jpg">
                   </li>
                   <li style="margin-right: 47%;float: right;color:#5B5B5B"><b>消息详情</b></li>
                  </ul>             
	          </div>
              <iframe frameborder="0" name="tvc" style="width:100%;height:550px;margin-top:0px;" ></iframe>         
             </div>     
	       </div>

          </td>   
      </tr>       
      <tr align="center">     
          <td width="80px">ID</td>
          <td width="120px">用户昵称</td>  
          <td>评论内容</td>  
          <td >评分</td> 
          <td >资讯ID</td>
          <td width="150px">发布时间</td>
          <td width="80px">审核</td>

      </tr >   
     <c:forEach var="tc" items="${requestScope.al }">  
     <tr align="center" >
	     <td>${tc.localcommentsId}</td>
	     <td>${tc.SUser.userNikename}</td>
	     <td align="left" style="padding: 3px">${tc.localcommentsInfo}</td>
	     <td width="100px" >${tc.localcommentsPoint}</td>
	     <td width="100px" >${tc.SLocalgoods.localgoodsId}</td>
	     
	     <td>${tc.localcommentsTime}</td>
	     <td>
	        <c:if test="${tc.localcommentsInfostatus==0}">
	          <a onclick="doUpdate(${tc.localcommentsId},2)" href="" style="color:#104E8B">通过</a>&nbsp;
	          <a onclick="doUpdate(${tc.localcommentsId},1)" href="" style="color:#104E8B">删除</a>
		    </c:if>       	
	     </td>     
     </tr>		
     </c:forEach>  
          <tr>
             <td colspan="7" align="center">${requestScope.pager}</td>
          </tr>  
  </table>
</div>
  </body>
</html>
