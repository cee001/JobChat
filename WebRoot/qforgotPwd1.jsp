
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
	<style type="text/css">
	
	</style>
    <script>

	 function clear1(){
	     dv1.innerHTML = "";
	     dv2.innerHTML = "";	 	 
	 }		
	function checkcode(){
			var objP1=document.getElementById("pid1");
            var objP2=$('#mobile_code').val();	
            var phone=document.getElementById("mobile").value;
		   //alert(phone);
			if(phone==""){
			     dv1.innerHTML = ">请输入手机号码";
			     return false;
			}
			if(phone.length!=11){
			     dv1.innerHTML = ">号码位数不正确";
			     return false;
			}
			if(objP1.value ==""){
				 dv2.innerHTML = ">请输入验证码";				
				return false;
			}								
			if(objP1.value!=objP2){
			     dv2.innerHTML = ">验证码错误，请重新输入";
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
				     if(ret==1){
					     dv1.innerHTML = ">此手机号码没有注册";
					     return false;				     
				     }else{
				     	 window.location.href= "qforgotPwd2.jsp?phone="+phone; 
				     }

				      }
				      });		
			
	}
	function get_mobile_code(){
	
		    var phone=document.getElementById("mobile").value;	
			if(phone==""){
			     dv1.innerHTML = ">请输入手机号码";
			     return false;
			}
			if(phone.length!=11){
			     dv1.innerHTML = ">号码位数不正确";
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
				     if(ret==1){
					     dv1.innerHTML = ">此手机号码没有注册";
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
   <body style="background: #F7F7F7">
    <input id="mobile_code" type="hidden" name="mobile_code" value="123456">
    <div id="#indexdvp" style="font-family: 微软雅黑;">
        <div id="divpp6">
          <ul>
           <li style="margin-left: 25%;margin-top: 2%"><img src="images/dlym/zhuce_03.png"></li>
           <li style="margin-left: 65%;margin-top: 6%;font-size:17px;">
             <a href="sunhome.html">阳光生活首页</a>
           </li>
           <li style="margin-top: 8%;width:100%;height:10px;background: #FF7F00;">&nbsp;</li>
          </ul>
        </div>
	    <div id="divpp7">
	      <ul >
           <li style="font-size:20px">找回密码 </li>
           <li  style="margin-top: 0px"><img width="85%" src="images/dlym/zhuce.png"></li>
           <li>
              <div id="divpp7-1">	
		                         手机号:
		      </div>  	  
	          <div id="divpp7-2">		          
                <input id="mobile" onFocus="clear1()" type="text" name="mobile" onkeydown="this.style.background='none'"class="inputBg"
                       onkeyup="value=value.replace(/[^\d]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"
                       style=" border:0;border-color:#FFFFFF;font-size:16px; height:25px;width:98%;"/>	                    		                     
	          </div>
	          <div id="dv1" style="text-align: left;color:#FF6347;font-size: 14px"></div>	          
	          <br>	            
           </li>
           <li>
             <div id="divpp7-1">	
	                                    验证码:
	         </div>
	         <div id="divpp7-3">
	            <input id="pid1" onFocus="clear1()" type="text" style="border:0;font-size:16px; height:25px;width:95%;"/>
	         </div>
	         <div style="float:left;margin-top: 3px;margin-left: 5px;font-size: 13px;">
	            <input id="zphone" type="button" value="获取手机验证码 " onClick="get_mobile_code()"class="inputBg">
	         </div>
	         <div id="dv2" style="text-align: left;color:#FF6347;font-size: 14px">&nbsp;</div>   
     	 	                              
           </li>
           <li style="margin-top: 45px">
               <div id="divpp7-1">&nbsp;</div>
               <div id="divpp7-2" style="border:0px;">
	           <a onClick="checkcode()" href="#" >
	              <img width="100%" height="50px" src="images/dlym/wangji_12.png">
	           </a><br>
	           </div>
           </li>
          </ul>
	              
	    </div>
    </div>
  </body>
</html>
