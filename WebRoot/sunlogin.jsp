<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>

    <title>Sunhome登陆</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link href="css/qloginStyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery.js"></script>	
    	<script type="text/javascript" src="js/md5.js"></script>
	<style type="text/css">
	#ullog{text-align:left;float:left;width:45%;list-style-type: none;padding: 0px}
	#ullog li{margin-left:0px;float:left;text-align:left;} 
    #ullog1{text-align:left;float:left;width:55%;list-style-type: none;padding: 0px}
    #ullog2{text-align:center;float:left;width:45%;list-style-type: none;padding: 0px; }
    #ullog2 li{margin-top:25px;margin-left:0%;width:85%;text-align:center;} 	
    a:link{text-decoration : none ;color :#104E8B;} 
	a:visited {text-decoration : none ;color : #525252 ;} 
	a:hover {text-decoration : none ;color :#CD0000 ;} 
	a:active {text-decoration : none ;color :#104E8B;}	 		
	</style>

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
            var newpwd=hex_md5(objP2.value); 

			if(objP1.value==""){
			     lv1.innerHTML = "请输入账号";
			     return false;
			}	
			if(objP2.value==""){
				 lv1.innerHTML = "请输入密码";
				
				return false;
			}		

			 $.ajax({
			 	   async:false, 
			       type:"post",                           
			       url:"admin!dologin.action",
			       data:"loginId="+objP1.value
			           +"&loginPwd="+newpwd,		      		          
			       success:function(d){	
		                    if(d!=null){	
				   
				              window.location.href="sunmail.jsp";                                                                                                        		        		        	        		              	                                                         
		               }else{
		                                      
                              window.location.href="sunlogin.jsp";  

                               }
                               }                      		           		                  	     
			       });	

           }
   
    </script> 
  </head>

  
  <body background="#ffffff">

   <div id="indexdvp" style="background:#ffffff;background-size:cover;text-align:center;">

   <div  id="divpp1" >
        <ul id="ullog">
	       <li style="padding: 0px;text-align:left;width:80%;">
	            <img style="width:100%;overflow:auto;overflow-x:hidden;" alt="" src="images/dlym/tlog.png">
	       </li>
       	       
        </ul>
    </div>
    <div id="divpp2" >
        <table border="2" bordercolor="#C2C2C2">
           <tr>
            <td>            
	        <ul id="ullog1" style="padding: 0px;">
		       <li style="padding: 0px;text-align:left;margin-top: 3px;margin-left: 3px;margin-bottom:3px;border:0px;">
		            <img style="width:100%;border:0px;overflow:hidden;padding: 0px; " alt="" src="images/dlym/dl2.png">
		       </li>
	        </ul>
	         <ul id="ullog2">
               <li id="lv1" style="color:#FF4500;font-size:16px;width:200px;height:25px;margin-top:15%;padding-left: 12%;"> 
		                                       
		       </li>
		
		       <li style="float: left;margin-top:5%;margin-left:3%;height:30px;padding: 0px;"> 
		       <div style="margin-top: 3px;float: left">	
		          <img alt="" src="images/dlym/zh.png">&nbsp;&nbsp;
		       </div>  
	  
		          <div style="margin-top: 0px;float: left;border: 1px solid;border-color:#36648B;text-align: right;width:83%">		          
		              <input id="pid1" onFocus="clear1()" type="text" name="loginId" onkeydown="this.style.background='none'"
		                     style=" border:0;border-color:#FFFFFF;font-size:16px; height:25px;width:98%;background: url(images/dlym/zhd.png)"/>
		                     
		                     
		          </div>
		       </li>
			      
		       <li style="float: left;margin-left: 10px;margin-top:15px;margin-left:3%;height:30px;padding: 0px;"> 
		         <div style="margin-top: 3px;float: left">	
		            <img alt="" src="images/dlym/mm.png">&nbsp;&nbsp;
		         </div>
		         <div style="margin-top: 0px;float: left;width:83%;">
		            		         <div style="margin-top: 0px;width:100%;text-align: right;border: 1px solid;border-color:#36648B;">
		            <input id="pid2" onFocus="clear1()" type="password" name="loginPwd" onkeydown="this.style.background='none'"
		                    style=" border:0;font-size:16px; height:25px;width:98%;background: url(images/dlym/mmd.png)"/>
		            </div>        <br>
			        <input class="bt"type="button"  style="border:0px;height:28px;width:102%;color:#ffffff;font-size:18px;
			               font-family:微软雅黑;margin-top:10px; background:url(images/dl5.jpg)" value="登  &nbsp录" onclick="checkLogin()"/>	 	                     
		         </div>



		       </li>

	       </ul>
	       </td>                         
         </tr>
       </table>
   
    </div>

    </div>

  </body>
</html>



