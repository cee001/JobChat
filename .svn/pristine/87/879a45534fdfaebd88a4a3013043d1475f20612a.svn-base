<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'showup.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
 <body bgcolor="#ffffff">

 
  <input type="hidden" name="ui.userinfoId" value="${requestScope.ui.userinfoId }">
    <div>
       <ul>
		  <li style="margin-top:10px;border-bottom: 1px solid;border-bottom-color:#E8E8E8;" >                    
			  <table style="margin-bottom:10px;margin-left:20px;font-size:16px">
			       <tr>
			         <td>当前位置&nbsp;<img alt="" src="images/jt07.png">&nbsp;个人信息</td>
			       </tr>
			   </table>	
		   </li>
           <li style="margin-top:30px;">
               <table style="margin-left: 30px;width:710px;height:150px;border-bottom: 1px solid;border-bottom-color:#A8A8A8;">
                 <tr>                    
                   <td style="width:180px;height:142px;">
                     <div style="margin-left: 40px">
                     
                       <c:if test="${requestScope.ui.SUser.userImgface !=null  }"> 
                       <img width="102px" style=" border: 1px solid;border-color:#E8E8E8; " src="${requestScope.ui.SUser.userImgface }">
                       </c:if>
                       
                       <c:if test="${requestScope.ui.SUser.userImgface ==null  }"> 
                          <img width="102px" style=" border: 1px solid;border-color:#E8E8E8; " src="images/home/c01.png">
                       </c:if>
                     </div>
                           
                   </td>
                   <td style="width:350px;font-size: 15px;font-family: 微软雅黑;"><br><br><br>&nbsp;${requestScope.ui.SUser.userNikename }</td>
                   <td>				
				 	 <div style="width:100%;text-align:right;">
				        <ul onclick="openhref1('demo.jsp')"  style="padding:0px;float: left;margin-right: 10px;cursor:pointer;">				           		 
				          <li onclick="openhref1('')" style="float: left;width:30px">	
				              <img alt="" src="images/home/26-27.png" style="">			        				            			              				                      			                		           
				          </li>       	           		        
				          <li style="width:100px;margin-top: 5px;">
				                                                   编辑头像						
				          </li>		        	            	        	
				        </ul>	             
				     </div>               			                       
                  </td>
                </tr>
             </table>
             <br>
             <br>
           </li>
        </ul>     
    </div>
    <table style="width:100%;line-height: 45px;font-size:15px;">   
	    <tr>
	       <td width="45%"  style="padding-left: 70px;">账号：${requestScope.ui.SUser.userPhone}</td>   
	       <td>昵称：${requestScope.ui.SUser.userNikename }</td>
	    </tr>	
	    <tr>
	        <td style="padding-left: 70px;">姓名：${requestScope.ui.userinfoTruename}</td>
	        <td>
  	                                       性别：<c:if test="${true==requestScope.ui.userinfoSex }"> 男</c:if>
	               <c:if test="${false==requestScope.ui.userinfoSex }"> 女</c:if>                      
	        
	        </td>
	    </tr>
	    <tr>
	        <td style="padding-left: 70px;">城市：${requestScope.ui.userinfoCity}</td>
	        <td>地址：${requestScope.ui.userinfoAddress}</td>
	    </tr>

	    <tr>
	        <td style="padding-left: 70px;">注册时间:${requestScope.ui.SUser.userTime }</td>
	        <td >
			 	 <div style="width:100%;text-align:right;margin-left: 215px">
			        <ul  onclick="openhref1('ur!showUpdate.action?u.userId=${requestScope.ui.SUser.userId }')"  style="padding:0px;float: left;margin-right: 10px;cursor:pointer;">				           		 
			          <li style="float: left;width:30px;margin-top: 5px;">	
			              <img alt="" src="images/home/26-26.png" style="">			        				            			              				                      			                		           
			          </li>       	           		        
			          <li style="width:100px;margin-top: 0px;">
			                                                   编辑资料						
			          </li>		        	            	        	
			        </ul>	             
			     </div>        
	        </td>
	      </tr>           
    </table>
 
    
  </body>
</html>
