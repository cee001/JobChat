<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>

    <title>登陆</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link href="css/qloginStyle.css" rel="stylesheet" type="text/css" />
	<link href="css/login-linkStyle.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.js"></script>	
	<script type="text/javascript">
	 function clear1(){
	     lv1.innerHTML = "";
	     lv2.innerHTML = "";	 	 
	 }	
	 
	$(document).keyup(function(event){
	  
	  if(event.keyCode ==13){
	    checkLogin();
	    
	  }
	 });	 

     function checkLogin(){

			var objP1=document.getElementById("pid1");
			var objP2=document.getElementById("pid2");

			if(objP1.value==""){
			     lv1.innerHTML = "请输入账号";
			     return false;
			}	
			if(objP2.value==""){
				 lv1.innerHTML = "请输入密码";
				
				return false;
			}		
               document.getElementById("f1").submit();
  
           }
   
    </script> 
  </head>

  
  <body background="#ffffff">
   <form id="f1"  action="ur!doLogin.action" method="post">
   <div id="indexdvp" style="background:#ffffff;background-size:cover;text-align:center;">
    <div  id="divpp4" >
        <ul id="ullog">
	       <li style="padding: 0px;text-align:left;width:80%;">
	            <img style="width:100%;overflow:auto;overflow-x:hidden;" alt="" src="images/dlym/dllog.jpg">
	       </li>       	       
        </ul>
    </div>
    <div id="divpp5" style="background: url(images/dlym/dl3.jpg);background-size:100% 100%; ">
	  <table id="ullog3">
		 <tr height="15%">
		   <td>&nbsp;</td><td width="80%" align="left"><b>阳光生活会员</b></td><td>&nbsp;</td>
		 </tr>
		 <tr height="25px">
		   <td>&nbsp;</td><td><div id="lv1" style="color:#FF4500;font-size:16px;">&nbsp;</div></td>
		 </tr>
		  <tr>
		   <td>&nbsp;</td>
		   <td height="15%">
		      <div id="divpp5-1">	
		          <img alt="" src="images/dlym/zh.png">&nbsp;&nbsp;
		      </div>  		
		      <div id="divpp5-2">		          
		           <input id="pid1" onFocus="clear1()" type="text" name="userPhone" onkeydown="this.style.background='none'"
		                  style=" border:0;border-color:#FFFFFF;font-size:16px; height:25px;width:85%;background: url(images/dlym/zhd.png)"/>		                    		                     
		      </div>
		  </td>
		  <td>&nbsp;</td>
		 </tr>
		 <tr height="15%">
		   <td>&nbsp;</td>
		   <td>
	         <div id="divpp5-1">	
	            <img alt="" src="images/dlym/mm.png">&nbsp;&nbsp;
	         </div>
	         <div id="divpp5-2">		 
	            <input id="pid2" onFocus="clear1()" type="password" name="userPassword" onkeydown="this.style.background='none'"
	                   style=" border:0;font-size:16px; height:25px;width:85%;background: url(images/dlym/mmd.png)"/>
	         </div>      	 	    
		   </td>
		   <td>&nbsp;</td>
		   </tr>
		   <tr>
		   <td>&nbsp;</td>
		   <td style="padding-bottom: 15%">
		     <div style="width:98%;margin-left:2px;">
	           <input class="bt"type="button"  style="border:0px;height:28px;width:101%;color:#ffffff;font-size:18px;
	                   font-family:微软雅黑;margin-top:10px; background:url(images/dl5.jpg)" value="登  &nbsp录" onclick="checkLogin()"/>
	         </div>          
	         <div id="divpp5-3">
	                    <a href="qregister.jsp"><b>注册</b></a>&nbsp;<a href="qforgotPwd1.jsp">忘记密码</a>
	         </div> 		   
		   </td>
		   <td>&nbsp;</td>
		 </tr>
		 
	 </table>       
	
    </div>
    </div>

    </form>
  </body>
</html>



