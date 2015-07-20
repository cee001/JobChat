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
	<link href="css/qloginStyle.css" rel="stylesheet" type="text/css" />
	<link href="css/login-linkStyle.css" rel="stylesheet" type="text/css" />	
	<script type="text/javascript" src="js/jquery.js"></script>	
	<script type="text/javascript" src="js/md5.js"></script>	
    <script>

	 function clear1(){
	     dv1.innerHTML = "";
	     dv2.innerHTML = "";	 	 
	 }		
     function checkPwd(){
   
			var objP1=document.getElementById("p1");
			var objP2=document.getElementById("p2");		
            var phone=document.getElementById("phone").value;

			if(objP1.value==""){
				 dv1.innerHTML = ">密码不能为空";
				
				return false;
			}
			if(objP1.value.length<6){
			    dv1.innerHTML = ">密码至少大于6位";
			
				return false;	
			}
			if(objP2.value==""){
				dv2.innerHTML = ">请确认密码";
				
				return false;
			}						

			if(objP2.value != objP1.value){
				dv2.innerHTML = ">两次输入密码不一致";
			
				return false;		
			}
		    var newpwd=hex_md5(objP1.value);
 		 
              //提交                                                            		     		     		     	 
		     $.ajax({
		       async:false,
		       type:"post",
		       url:"ur!doUpdate2.action",
		       data:"userPhone="+phone
		           +"&userPwd="+newpwd,
		       success:function(d) {	
		        	window.location.href= "qforgotPwd3.jsp"; 	                                    
	            }  	                      		           		                  	     
		       });
            }     
    </script> 
  </head>
    <body style="background:#F7F7F7">
    <input id="mobile_code" type="hidden" name="mobile_code" value="123456">
    <input id="phone" type="hidden" name="phone" value="<%=request.getParameter("phone")%>　">
    <div id="#indexdvp" style="font-family: 微软雅黑;">
        <div id="divpp6">
          <ul>
           <li style="margin-left: 25%;margin-top: 2%"><img src="images/dlym/zhuce_03.png"></li>
           <li style="margin-left: 65%;margin-top: 6%;font-size:17px;">
             <a href="sunhome.html">阳光生活首页</a>
           </li>
           <li style="margin-top: 8%;width:100%;height:10px;background: #3258ae">&nbsp;</li>
          </ul>
        </div>
	    <div id="divpp7">
	      <ul >
           <li style="font-size:20px">找回密码 </li>
           <li  style="margin-top: 0px"><img width="85%" src="images/dlym/zhuce.png"></li>
           <li>
              <div id="divpp7-1">	
		                         新密码:
		      </div>  	  
	          <div id="divpp7-2">		          
                <input id="p1" onFocus="clear1()" type="password" name="userPassword" 
                       style=" border:0;border-color:#FFFFFF;font-size:16px; height:25px;width:98%;"/>	                    		                     
	          </div>
	          <div id="dv1" style="text-align: left;color:#FF6347;font-size: 14px">&nbsp;</div>	               
           </li>
           <li style="margin-top: 5px;">
	          <div id="divpp7-1" >	
		         &nbsp;
		      </div> 	
	          <div id="divpp7-2" style="text-align: left;border: 0px;margin-top: 3px">
	             <font style="font-size:13px;color:#707070 ">密码由6位以上的数字、字母或字符组成</font>
	          </div>              
           </li>
           <li style="margin-top: 20px;">
             <div id="divpp7-1" >	
	                                    确认密码:
	         </div>
	         <div id="divpp7-2">
	            <input id="p2" onFocus="clear1()" type="password" name="rePassword" 
                       style=" border:0;border-color:#FFFFFF;font-size:16px; height:25px;width:98%;"/>	
	         </div>
	         <div id="dv2" style="text-align: left;color:#FF6347;font-size: 14px">&nbsp;</div>      	 	                              
           </li>
           <li style="margin-top: 45px">
               <div id="divpp7-1">&nbsp;</div>
               <div id="divpp7-2" style="border:0px;">
	           <a onClick="checkPwd()" href="#">
	              <img width="100%" height="50px" src="images/dlym/tijiao_03.png">
	           </a><br>
	           </div>
           </li>
          </ul>
	              
	    </div>
    </div>


  </body>
</html>
