<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>

    <title>特检通会员注册</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/qloginStyle.css" rel="stylesheet" type="text/css" />
	<link href="css/login-linkStyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery.js"></script>	
	<script type="text/javascript" src="js/md5.js"></script>	
	<script type="text/javascript">
	 function clear1(){
	     dv1.innerHTML = "";
	 
	 }	
	 
	$(document).keyup(function(event){
	  if(event.keyCode ==13){
	    checkLogin();
	  }
	 });	 

     function checkLogin(){
			//alert("0");
			var objP1=document.getElementById("mobile");
			var objP2=document.getElementById("pid2");
			var objP3=document.getElementById("pid3");
			var objP4=document.getElementById("pid4");
            var objP5=$('#mobile_code').val();
    
			if(objP1.value==""){
			     dv1.innerHTML = "请输入手机号码";
			     return false;
			}
			if(objP1.value.length!=11){
			     dv1.innerHTML = "手机号码位数不正确";
			     return false;
			}	
  			    var json ={
			    "sendtype":10005,
			    "data":{
			    "phone":objP1.value,
			    }}; 
		     
	           $.ajax({   	       		
				     type:"post",
		             url:"mobile!mobile.action",	 				      
				     dataType:"json",
      		         data:"para="+JSON.stringify(json), 
				     success:function(d){				     				
				     var ret=d.ret;

				     if(ret==0){
					     dv1.innerHTML = "此手机号码已经注册，请重输号码";
					     return false;				     
				     }else{
						if(objP2.value==""){
							 dv1.innerHTML = "请输入密码";
							
							return false;
						}
			
						if(objP2.value.length<6){
						    dv1.innerHTML = "密码至少大于6位";			
							return false;	
						}
						if(objP3.value==""){
							 dv1.innerHTML = "请确认密码";				
							return false;
						}
			
						if(objP2.value != objP3.value){
							dv1.innerHTML = "两次输入密码不一致";
						
							return false;		
						}
						if(objP4.value==""){
							 dv1.innerHTML = "请输入验证码";
							
							return false;
						}								
						if(objP4.value!=objP5){
						     dv1.innerHTML = "验证码错误，请重新输入";
						     return false;
						}  
						var newpwd=hex_md5(objP2.value);	
			            var json1 ={
						    "sendtype":10003,
						    "data":{
						    "userPhone":objP1.value,
						    "userPassword":newpwd,
						    }}; 	
  			     
				        $.ajax({   	       		
						     type:"post",
				             url:"mobile!mobile.action",	 				      
						     dataType:"json",
			     		         data:"para="+JSON.stringify(json1), 
						     success:function(d){				     				
						     var ret=d.ret;
						     if(ret==0){
					
								window.location.href= "qsuccessreg.jsp";		     
						     }				     
						     }
					    });				     
				     }				     
				     }
				     });				


      }
      
      
	function get_mobile_code(){
		    var phone=document.getElementById("mobile").value;
		   // alert(phone);
			if(phone==""){
			     dv1.innerHTML = "请输入手机号码";
			     return false;
			}
			if(phone.length!=11){
			     dv1.innerHTML = "手机号码位数不正确";
			     return false;
			}	
  			    var json ={
			    "sendtype":10005,
			    "data":{
			    "phone":phone,
			    }}; 				     
	           $.ajax({   	       		
				     type:"post",
		             url:"mobile!mobile.action",	 				      
				     dataType:"json",
      		         data:"para="+JSON.stringify(json), 
				     success:function(d){				     				
				     var ret=d.ret;
				     //alert(ret);
				     if(ret==0){
					     dv1.innerHTML = "此手机号码已经注册，请重输号码";
					     return false;				     
				     }else{
						 var code = (Math.random()*9+1)*100000;
						 code =parseInt(code);
						 document.getElementById("mobile_code").value=code;
					     $.post('sms.jsp', {mobile:jQuery.trim(phone+"/"+code)}, function(msg) {
				            //alert(jQuery.trim(unescape(msg)));
				    
							if(msg!=null){
								RemainTime();
							}
				         });				     
				     }				     
				     }
				     });
	};
	var iTime = 59;
	var Account;
	function RemainTime(){
	    		//alert("100");
		document.getElementById('zphone').disabled = true;
		var iSecond,sSecond="",sTime="";
		if (iTime >= 0){
			iSecond = parseInt(iTime%60);
			iMinute = parseInt(iTime/60);
			if (iSecond >= 0){
				if(iMinute>0){
					sSecond = iMinute + "分" + iSecond + "秒后可重新获取";
				}else{
					sSecond = iSecond + "秒后可重新获取";
				}
			}
			sTime=sSecond;
			if(iTime==0){
				clearTimeout(Account);
				sTime='获取手机验证码';
				iTime = 59;
				document.getElementById('zphone').disabled = false;
			}else{
				Account = setTimeout("RemainTime()",1000);
				iTime=iTime-1;
			}
		}else{
			sTime='没有倒计时';
		}
		document.getElementById('zphone').value = sTime;
	}
    </script> 
  </head>

  
  <body background="#ffffff">
   <input id="mobile_code" type="hidden" name="mobile_code" value="123456">
   <form id="f1"  action="ur!doLogin.action" method="post">
   <div id="indexdvp" style="background:#ffffff;background-size:cover;text-align:center;">
      <div  id="divpp4" >
        <ul id="ullog"> 
	       <li style="padding: 0px;text-align:left;width:80%;">
	            <img style="width:100%;overflow:auto;overflow-x:hidden;" alt="" src="images/dlym/hyzc.png">
	       </li>
      	       
        </ul>
      </div>
      <div id="divpp5" style="background: url(images/dlym/dl3.jpg);background-size:100% 100%; ">
        
	         <ul id="ullog4">
               <li style="text-align:left;margin-top:20px;margin-bottom:15px;color:#3D3D3D;font-size:17px;padding-left: 5%;">
                                                                阳光生活账号注册   
                   <div id="dv1" style="margin-top:10px;width:100%;font-size:15px;color:#FF4500;text-align: center;"></div>                                                                                  
		       </li>		         
		       <li> 
			      <div style="float:left;text-align:right;margin-top: 2px;width:70px">	
			                         手机号:
			      </div>  	  
		          <div style="margin-top: 0px;margin-left:3%;float: left;border: 1px solid;border-color:#36648B;text-align: right;width:65%;">		          
		              <input  id="mobile" onFocus="clear1()" type="text" name="mobile" onkeydown="this.style.background='none'"class="inputBg"
		                     onkeyup="value=value.replace(/[^\d]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"
		                     style=" border:0;border-color:#FFFFFF;font-size:16px; height:25px;width:98%;"/>		                    		                     
		          </div>
		       </li>			      
		       <li> 
		         <div style="margin-top: 2px;float: left;width:70px;text-align: right;">	
		                                   密码:
		         </div>
		         <div style="margin-top: 0px;margin-left:3%;float: left;width:65%;">
		            <div style="margin-top: 0px;width:100%;text-align: right;border: 1px solid;border-color:#36648B;">
		            <input id="pid2" onFocus="clear1()" type="password" name="userPassword"
		                    style=" border:0;font-size:16px; height:25px;width:98%;"/>
		            </div>     	 	                     
		         </div>
		       </li>
		       <li> 
		         <div style="margin-top: 2px;float: left;width:70px;text-align: right;">	
		                                   确认密码:
		         </div>
		         <div style="margin-top: 0px;margin-left:3%;float: left;width:65%;">
		            <div style="margin-top: 0px;width:100%;text-align: right;border: 1px solid;border-color:#36648B;">
		            <input id="pid3" onFocus="clear1()" type="password" name="userPassword" onkeydown="this.style.background='none'"
		                    style=" border:0;font-size:16px; height:25px;width:98%;"/>
		            </div>     	 	                     
		         </div>
		       </li>
		       <li> 
		         <div style="margin-top: 2px;float: left;width:70px;text-align: right;">	
		                                    验证码:
		         </div>
		         <div style="margin-top: 0px;margin-left:3%;float: left;width:65%;">
		            <div style="float:left;margin-top: 0px;width:35%;text-align: right;border: 1px solid;border-color:#36648B;">
		            <input id="pid4" onFocus="clear1()" type="text" name="" onkeydown="this.style.background='none'"
		                    style=" border:0;font-size:16px; height:25px;width:95%;"/>
		            </div>
		             <div style="float:left;margin-top: 3px;margin-left: 5px;font-size: 13px;">
		              <input id="zphone" type="button" value=" 获取手机验证码 " onClick="get_mobile_code()"class="inputBg">
		             </div><br>
			        <input class="bt"type="button"  style="border:0px;height:28px;width:101%;color:#ffffff;font-size:18px;
			               font-family:微软雅黑;margin-top:15px; background:url(images/dl5.jpg)" value="注 &nbsp册 " onclick="checkLogin()"/>
			        <div style="color:#5E5E5E;width:100%;margin-top:15px;text-align: right;">
                                                                                  我已经注册，<a href="qlogin.jsp">立刻登录</a>
                    </div>       	 	                     
		         </div>
		       </li>		       		       
	       </ul>
      </div>
    </div>

    </form>
  </body>
</html>



