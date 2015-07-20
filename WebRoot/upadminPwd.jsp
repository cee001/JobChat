<%@page import="com.jobchat.entity.Admin"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'qUppass.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<script type="text/javascript" src="js/jquery.js"></script>	
	<script type="text/javascript" src="js/md5.js"></script>	
    <script>
    function checkLogin1(){

    		var objL1=document.getElementById("pd");
			var objP1=document.getElementById("pd1");
			if(objP1.value==""){
			     lv1.innerHTML = ">请输入旧密码";
			     return false;
			}				
			if(objP1.value!=objL1.value){
				 lv1.innerHTML = ">旧密码错误";
				
				return false;
				
			}else{
			lv1.innerHTML = "";
			}
			}
	 function clear1(){
	     lv1.innerHTML = "";
	     lv2.innerHTML = "";
	     lv3.innerHTML = "";	 	 
	 }		
     function checkLogin(){

			var objL1=document.getElementById("pd");
			var objP1=document.getElementById("pd1");
			var objP2=document.getElementById("pd2");	
		    var objP3=document.getElementById("pd3");	
		    var pas= hex_md5(objP1.value);
		    var newpa=hex_md5(objP2.value);
			if(objP1.value==""){
			     lv1.innerHTML = ">请输入旧密码";
			     return false;
			}				
			if(pas!=objL1.value){
				 lv1.innerHTML = ">旧密码错误";
				
				return false;
				
			}
			if(objP2.value==""){
				 lv2.innerHTML = ">密码不能为空";
				
				return false;
			}
			if(objP2.value.length<6){
			    lv2.innerHTML = ">密码至少大于6位";
			
				return false;	
			}
						
			if(objP2.value.match(/^\d+$/)) {				
				lv2.innerHTML = ">密码不能全为数字";
			
				return false;		
				}							

			if(objP1.value == objP2.value){
				lv2.innerHTML = ">新旧密码不能相同";
			
				return false;	
			}
	
		
			if(objP2.value != objP3.value){
				lv3.innerHTML = ">两次输入密码不一致";
			
				return false;		
			}
			 
              //评论提交                                                            		     		     		     	 
		     $.ajax({
		       type:"post",
		       url:"admin!doUpdate.action",
		       data:"am.loginPwd="+newpa,
		       success:function(d) {	
		        		        	        
	                      document.getElementById("pwdid").innerHTML='<div style="margin-top: 20px;color:red;">密码修改成功!</div>';		                                    
	            }  	                      		           		                  	     
		       });
            }     
    </script> 
  </head>
  
  <body>
      <table   border="1" bordercolor="#B2DFEE" align="center" style="border-collapse: collapse;width:100%;line-height: 25px;font-size:15px;" cellpadding="0" cellspacing="0">   
      <tr>     
          <td bgcolor="#F0F8FF" colspan="3">
            <div style="font-size:15px;">
                 <div  style="margin-top: 5px;margin-left: 12px;"> 
                 <b>修改个人密码</b> 
                 </div>
            </div>
          </td>   
      </tr> 
      <tr >  
	
      <td align="center" colspan="3">
	    <div id="pwdid" style="width:310px;height:300px;">      
	    <div style="padding: 0px;visibility: visible;position:absolute;margin-top:0px;float: left;width:310px;height:300px;"> 
	    <div style="display:none;" >
	        <% 
	         Admin an=(Admin)session.getAttribute("sunlogin"); 
	           if(session.getAttribute("sunlogin")==null){
               response.sendRedirect("sunlogin.jsp");
               return;
          
	         }else{
	
	         } 
	        %>	    
	        <input id="pd" type="hidden"  value="<%=an.getLoginPwd() %>">

	    </div> 
	         <ul id="ulo" style="visibility: visible;position:absolute;margin-top: 45px;margin-left: 0px;padding:0px;
	                             font-size:15px;list-style-type: none;width:480px;">                             
	            <li style="margin-left:10px;">
	            <table width="450px" height="150px" style="font-size:15px;">
	                 <tr>
	                    <td width="260" align="right">
			                <b style="color:#FF4500">*</b> 
			                                                          当前密码：<input onBlur="checkLogin()" id="pd1" type="password"/>                
	                    </td>
	                    <td><div id="lv1" style="color:#FF4500;font-size:15px"></div></td>                
	                 </tr>
	                 <tr>
	                    <td align="right">
			                <b style="color:#FF4500;">*</b>
			                                                        新密码：<input id="pd2" onFocus="clear1()" type="password" name="am.loginPwd" /><br>
	                        <div style="margin-top: 5px"><font style="font-size:13px;color:#707070 ">密码由6位以上的数字、字母或字符组成</font></div>                                         		                        
	                    </td>
	                    <td><div id="lv2" style="color:#FF4500;font-size:15px"></div><br></td>                
	                 </tr>
	                 <tr>
	                    <td align="right">
			                <b style="color:#FF4500">*</b> 
			                                                       确认密码：<input onFocus="clear1()" id="pd3" type="password" name="reloginPwd" />	                        
	                    </td>
	                    <td><div id="lv3" style="color:#FF4500;font-size:15px"></div></td>                
	                 </tr>
	                 <tr>
	                   <td align="right">
					      <input type="button" value="提 交" onclick="checkLogin()"
					             onmouseover="this.style.background='url(images/lan1.jpg)'" onmouseout="this.style.background='url(images/lan.jpg)'"
			                     style="margin-left: 12px; border:none;width:80px; height:25px;
			                     font-size:15px;color:#ffffff; background:url(images/lan.jpg)" />                   	                        
	                    </td>
	          
	                 </tr>           
	            </table>
	            </li>
	         </ul>
	      </div>
	      
	      </div>      
      </td>   
	
      </tr >   

  </table>



  </body>
</html>
