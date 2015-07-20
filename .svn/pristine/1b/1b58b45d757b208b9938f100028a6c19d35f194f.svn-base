<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/md5.js"></script>	
	<style type="text/css">
	#indexdiv { width: 99%; margin:0 auto; overflow:inherit; height:99%;text-align: center; } 
	
	#divp1  { border: 1px solid;border-color:#B2DFEE; width: 100%;;}
	</style>
    <script>
         function time(){  
                    var myDate = new Date();
                    var Y=myDate.getFullYear();    
                    var M=myDate.getMonth();     
                    var D=myDate.getDate();  
                    var T=myDate.toLocaleTimeString();   
                    var time=Y+"-"+M+"-"+D+" "+T;                
                    document.getElementById("t1").value=time;                         
                   
         }   
	 function clear1(){
	     dvp.innerHTML = '&nbsp;';
 	 
	 }	            
	  function checkLogin(){
			
			var objL1=document.getElementById("l1");
			var objP1=document.getElementById("p1");
			var objP2=document.getElementById("p2");						
			if(objL1.value==""){
			    dvp.innerHTML = "请填入帐号!";

				return false;
			}		
			
			if(objL1.value.length<2){
                dvp.innerHTML = "字符不得少于2位!";			

				return false;
			}						
				
			for(var i=0;i<objL1.value.length;i++){	
			  
				var v1=objL1.value.charAt(i);
				if(!(v1>='a'|v1>='0' && v1<='z'|v1<='9')){
                dvp.innerHTML = "账号不能为中文";					

					objL1.select();
					return false;	
				}
			}						
			
			if(objP1.value==""){
                dvp.innerHTML = "请输入密码";					
		
				return false;
			}
			if(objP1.value.length<6){
                dvp.innerHTML = "密码至少为6位数!";	

				return false;	
			}
			if(objP2.value==""){
                dvp.innerHTML = "请确认密码!";				

				return false;
			}
			if(objP1.value!=objP2.value){
                dvp.innerHTML = "密码输入不一致";				

				return false;	
			}
		    var newpas= hex_md5(objP1.value);
		    document.getElementById("p1").value=newpas;			
			}
    </script> 
  </head>

  
  <body >
	  <form onsubmit="return checkLogin()" action="admin!doAdd.action" method="post">
        <input id="t1" type="hidden" name="u.regDate">
   	    <input type="hidden" name="u.roleInfo.roleId" value="6"> 

   <div id="indexdiv">
   <div  id="divp1" >
    <table align="center" border="0" bgcolor="" cellspacing="1" width="100%" style="font-size:15px;">

        <tr >
          <td colspan="4" bgcolor="#F0F8FF" align="left" style="font-size:22px;border-bottom: 1px solid;border-bottom-color:#B2DFEE;">
            <div style="font-size:15px;">
                 <div  style="margin-top: 5px;margin-left: 12px"> 
                 <b>添加员工</b> 
                 </div>
            </div>
          </td> 
         <tr >
          <td colspan="4" align="center" >
            <div id="dvp" style="font-size:15px;color:red;padding-top: 7px">
              &nbsp;
            </div>
          </td>        
        </tr>
        <tr>
        <td>&nbsp;</td>
        </tr> 
        <tr>
        <td >&nbsp;</td>
        <td  width="60" align="right"><font>账号:</font></td>
        <td width="230" align="left"><input id="l1" onFocus="clear1()" type="text" name="am.loginId" style="font-size:15px; height:20px; width:200px"/></td>
        <td >&nbsp;</td>
        </tr>
        <tr>
        <td>&nbsp;</td>
        <td align="right"> <font >密码:</font></td>
        <td align="left"><input id="p1" onFocus="clear1()" type="password" name="am.loginPwd" style=" font-size:15px; height:20px; width:200px"/></td>
        
        <td>&nbsp;</td>
        </tr>

        <tr>
        <td>&nbsp;</td>
        <td align="right"> <font >确认:</font></td>
        <td align="left"><input id="p2" onFocus="clear1()" type="password" name="reLoginPwd" style=" font-size:15px; height:20px; width:200px"/></td>
        
        <td>&nbsp;</td>
        </tr>

        <tr>
        <td>&nbsp;</td>
        </tr>         
        <tr>
        <td >&nbsp;</td>
        <td >&nbsp;</td>
        <td align="center">
          <input type="submit" value="添 加" 
	             onmouseover="this.style.background='url(images/lan1.jpg)'" onmouseout="this.style.background='url(images/lan.jpg)'"
                 style="margin-left: 12px; border:none;width:100px; height:25px;font-size:15px;color:#ffffff; background:url(images/lan.jpg)"/>&nbsp;&nbsp;&nbsp;&nbsp;
  
         </td>
         <td>&nbsp;</td>
        </tr>
        <tr>
        <td height="100px">&nbsp;</td>
        </tr> 
    
    
    </table> 
    </div>
    </div>
    </form>
  </body>
</html>



